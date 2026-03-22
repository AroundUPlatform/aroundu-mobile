import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_contacts/flutter_contacts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geocoding/geocoding.dart' as geo;
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../auth/data/auth_api.dart';
import '../../auth/view_model/auth_view_model.dart';
import '../../../core/config/app_environment.dart';
import '../../../core/l10n/l10n_extension.dart';
import '../../../core/logging/app_logger.dart';

// ── Places autocomplete suggestion ────────────────────────────────────────────

class _PlaceSuggestion {
  const _PlaceSuggestion({required this.description, required this.placeId});
  final String description;
  final String placeId;
}

// ── Reverse-geocoding result ──────────────────────────────────────────────────

class _GeoResult {
  const _GeoResult({
    this.fullAddress,
    this.area,
    this.city,
    this.postalCode,
    this.country,
  });
  final String? fullAddress;
  final String? area;
  final String? city;
  final String? postalCode;
  final String? country; // 2-letter ISO code, e.g. "IN"
}

// ── Main screen ───────────────────────────────────────────────────────────────

class LocationPickerScreen extends ConsumerStatefulWidget {
  const LocationPickerScreen({super.key});

  @override
  ConsumerState<LocationPickerScreen> createState() =>
      _LocationPickerScreenState();
}

class _LocationPickerScreenState extends ConsumerState<LocationPickerScreen>
    with SingleTickerProviderStateMixin {
  static final _log = AppLogger.tag('LocationPicker');

  // tabs
  late final TabController _tabController;

  // map
  GoogleMapController? _mapController;
  LatLng _centre = const LatLng(
    20.5937,
    78.9629,
  ); // Geographic center of India — overridden immediately by GPS or saved address
  bool _mapReady = false;
  MapType _mapType = MapType.normal;

  // location
  bool _isGettingLocation = false;

  // places search
  final TextEditingController _searchController = TextEditingController();
  late final Dio _dio;
  List<_PlaceSuggestion> _suggestions = const [];
  bool _isSearching = false;
  bool _showSuggestions = false;

  // dark-mode map style ("Night" palette)
  static const String _darkMapStyle = '''[
  {"elementType":"geometry","stylers":[{"color":"#212121"}]},
  {"elementType":"labels.icon","stylers":[{"visibility":"off"}]},
  {"elementType":"labels.text.fill","stylers":[{"color":"#757575"}]},
  {"elementType":"labels.text.stroke","stylers":[{"color":"#212121"}]},
  {"featureType":"administrative","elementType":"geometry","stylers":[{"color":"#757575"}]},
  {"featureType":"administrative.country","elementType":"labels.text.fill","stylers":[{"color":"#9e9e9e"}]},
  {"featureType":"administrative.land_parcel","stylers":[{"visibility":"off"}]},
  {"featureType":"administrative.locality","elementType":"labels.text.fill","stylers":[{"color":"#bdbdbd"}]},
  {"featureType":"poi","elementType":"labels.text.fill","stylers":[{"color":"#757575"}]},
  {"featureType":"poi.park","elementType":"geometry","stylers":[{"color":"#181818"}]},
  {"featureType":"poi.park","elementType":"labels.text.fill","stylers":[{"color":"#616161"}]},
  {"featureType":"poi.park","elementType":"labels.text.stroke","stylers":[{"color":"#1b1b1b"}]},
  {"featureType":"road","elementType":"geometry.fill","stylers":[{"color":"#2c2c2c"}]},
  {"featureType":"road","elementType":"labels.text.fill","stylers":[{"color":"#8a8a8a"}]},
  {"featureType":"road.arterial","elementType":"geometry","stylers":[{"color":"#373737"}]},
  {"featureType":"road.highway","elementType":"geometry","stylers":[{"color":"#3c3c3c"}]},
  {"featureType":"road.highway.controlled_access","elementType":"geometry","stylers":[{"color":"#4e4e4e"}]},
  {"featureType":"road.local","elementType":"labels.text.fill","stylers":[{"color":"#616161"}]},
  {"featureType":"transit","elementType":"labels.text.fill","stylers":[{"color":"#757575"}]},
  {"featureType":"water","elementType":"geometry","stylers":[{"color":"#000000"}]},
  {"featureType":"water","elementType":"labels.text.fill","stylers":[{"color":"#3d3d3d"}]}]''';

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);

    // Set up the Dio instance used for Google APIs with full logging.
    _dio = Dio();
    if (kDebugMode) {
      _dio.interceptors.add(
        LogInterceptor(
          requestBody: false,
          responseBody: true,
          requestHeader: false,
          logPrint: (obj) => _log.t(obj.toString()),
        ),
      );
    }
    _dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          // Mask the API key in the log (show only last 6 chars).
          final key = options.queryParameters['key'] as String? ?? '';
          final masked = key.length > 6
              ? '${'*' * (key.length - 6)}${key.substring(key.length - 6)}'
              : '***';
          _log.d(
            '→ Google API  ${options.method} ${options.path}  '
            'key: $masked  '
            'params: ${Map.from(options.queryParameters)..remove('key')}',
          );
          handler.next(options);
        },
        onResponse: (response, handler) {
          final status = (response.data as Map?)?['status'] as String? ?? '?';
          _log.d(
            '← Google API  ${response.statusCode}  '
            '${response.requestOptions.path}  '
            'status: $status',
          );
          if (status != 'OK' && status != 'ZERO_RESULTS') {
            _log.w(
              'Google API returned non-OK status: "$status".  '
              'Common causes: API key restriction, billing disabled, '
              'quota exceeded, or API not enabled in Cloud Console.  '
              'Full response: ${response.data}',
            );
          }
          handler.next(response);
        },
        onError: (DioException err, ErrorInterceptorHandler handler) {
          _log.e(
            'Google API network error  '
            '${err.requestOptions.path}  '
            'type: ${err.type.name}  '
            'status: ${err.response?.statusCode}',
            error: err,
            stackTrace: err.stackTrace,
          );
          handler.next(err);
        },
      ),
    );

    // Validate API key presence once on screen open.
    final apiKey = AppEnvironment.googleMapsApiKey.trim();
    if (apiKey.isEmpty) {
      _log.e(
        'GOOGLE_MAPS_API_KEY is empty!  '
        'Places search and reverse geocoding will fail.  '
        'Check your .env file.',
      );
    } else {
      _log.i(
        'LocationPickerScreen opened.  '
        'API key present (${apiKey.length} chars).',
      );
    }

    WidgetsBinding.instance.addPostFrameCallback((_) {
      final addr = ref.read(authControllerProvider).currentAddressFull;
      if (addr?.latitude != null && addr?.longitude != null) {
        _log.d(
          'Restoring saved address centre: '
          '(${addr!.latitude}, ${addr.longitude})',
        );
        setState(() => _centre = LatLng(addr.latitude!, addr.longitude!));
      } else {
        // No saved address — automatically move to the device's GPS position.
        _goToCurrentLocation();
      }
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    _mapController?.dispose();
    _searchController.dispose();
    _dio.close();
    super.dispose();
  }

  // ── map ───────────────────────────────────────────────────────────────────
  void _onMapCreated(GoogleMapController c) {
    _mapController = c;
    setState(() => _mapReady = true);
  }

  void _onCameraMove(CameraPosition pos) => _centre = pos.target;

  void _toggleMapType() => setState(() {
    _mapType = _mapType == MapType.normal ? MapType.satellite : MapType.normal;
  });

  // ── current location ──────────────────────────────────────────────────────
  Future<void> _goToCurrentLocation() async {
    _log.d('Requesting current location...');
    setState(() => _isGettingLocation = true);
    try {
      var permission = await Geolocator.checkPermission();
      _log.d('Location permission: ${permission.name}');
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        _log.d('After request, permission: ${permission.name}');
      }
      if (permission == LocationPermission.deniedForever) {
        _log.w('Location permission permanently denied');
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(context.l10n.locationDeniedPermanently)),
          );
        }
        return;
      }
      final pos = await Geolocator.getCurrentPosition(
        locationSettings: const LocationSettings(
          accuracy: LocationAccuracy.high,
        ),
      );
      _log.i(
        'GPS position: (${pos.latitude}, ${pos.longitude})  '
        'accuracy: ${pos.accuracy.toStringAsFixed(1)}m',
      );
      final target = LatLng(pos.latitude, pos.longitude);
      _centre = target;
      await _mapController?.animateCamera(
        CameraUpdate.newCameraPosition(
          CameraPosition(target: target, zoom: 16),
        ),
      );
    } catch (e, st) {
      _log.e('Failed to get current location', error: e, stackTrace: st);
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(context.l10n.couldNotGetLocation)),
        );
      }
    } finally {
      if (mounted) setState(() => _isGettingLocation = false);
    }
  }

  // ── reverse geocoding ─────────────────────────────────────────────────────
  /// Uses the device's native geocoder (via the `geocoding` package) —
  /// no API key or billing required.
  Future<_GeoResult> _reverseGeocode(LatLng point) async {
    _log.d('Reverse geocoding (${point.latitude}, ${point.longitude})');
    try {
      final placemarks = await geo.placemarkFromCoordinates(
        point.latitude,
        point.longitude,
      );

      if (placemarks.isEmpty) {
        _log.w('Reverse geocode: no placemarks returned');
        return const _GeoResult();
      }

      final p = placemarks.first;
      _log.i(
        'Reverse geocode OK → '
        'subLocality: ${p.subLocality}  '
        'locality: ${p.locality}  '
        'postalCode: ${p.postalCode}  '
        'isoCountryCode: ${p.isoCountryCode}',
      );

      // Build a human-readable full address from non-empty parts.
      final addressParts = <String>[
        if (p.name != null &&
            p.name!.isNotEmpty &&
            p.name != p.subLocality &&
            p.name != p.locality)
          p.name!,
        if (p.subLocality != null && p.subLocality!.isNotEmpty) p.subLocality!,
        if (p.locality != null && p.locality!.isNotEmpty) p.locality!,
        if (p.postalCode != null && p.postalCode!.isNotEmpty) p.postalCode!,
        if (p.country != null && p.country!.isNotEmpty) p.country!,
      ];
      final fullAddress = addressParts.isNotEmpty
          ? addressParts.join(', ')
          : null;

      final area = (p.subLocality?.isNotEmpty == true)
          ? p.subLocality
          : (p.thoroughfare?.isNotEmpty == true ? p.thoroughfare : null);
      final city = (p.locality?.isNotEmpty == true)
          ? p.locality
          : (p.subAdministrativeArea?.isNotEmpty == true
                ? p.subAdministrativeArea
                : null);

      return _GeoResult(
        fullAddress: fullAddress,
        area: area,
        city: city,
        postalCode: p.postalCode,
        country: p.isoCountryCode,
      );
    } catch (e, st) {
      _log.e('Reverse geocode exception', error: e, stackTrace: st);
      return const _GeoResult();
    }
  }

  // ── confirm pinned location ───────────────────────────────────────────────
  Future<void> _confirmPinnedLocation() async {
    // 1. Reverse-geocode the current pin position
    final geoResult = await _reverseGeocode(_centre);

    // If search bar has text, prefer it as fullAddress
    final finalGeo = _searchController.text.isNotEmpty
        ? _GeoResult(
            fullAddress: _searchController.text,
            area: geoResult.area,
            city: geoResult.city,
            postalCode: geoResult.postalCode,
            country: geoResult.country,
          )
        : geoResult;

    // 2. Show save-address sheet — returns AddressInfo with DB id (if saved)
    //    or without id (if user chose "Use Without Saving").
    if (!mounted) return;
    final result = await showModalBottomSheet<AddressInfo>(
      context: context,
      isScrollControlled: true,
      useSafeArea: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (ctx) => _SaveAddressSheet(geo: finalGeo, centre: _centre),
    );
    if (result == null || !mounted) return;

    // 3. Return the completed AddressInfo to the caller
    Navigator.of(context).pop(result);
  }

  void _selectSavedAddress(AddressInfo address) =>
      Navigator.of(context).pop(address);

  // ── places search ─────────────────────────────────────────────────────────
  Future<void> _searchPlaces(String input) async {
    if (input.trim().isEmpty) {
      setState(() {
        _suggestions = const [];
        _showSuggestions = false;
      });
      return;
    }
    _log.d('Places autocomplete query: "$input"');
    setState(() => _isSearching = true);
    try {
      final key = AppEnvironment.googleMapsApiKey.trim();
      final response = await _dio.get<Map<String, dynamic>>(
        'https://maps.googleapis.com/maps/api/place/autocomplete/json',
        queryParameters: <String, String>{
          'input': input.trim(),
          'key': key,
          // No 'types' filter → all places (restaurants, POIs, addresses…)
        },
      );
      final data = response.data;
      if (data != null && data['status'] == 'OK') {
        final predictions = data['predictions'] as List<dynamic>;
        _log.d('Autocomplete: ${predictions.length} predictions');
        setState(() {
          _suggestions = predictions
              .map(
                (p) => _PlaceSuggestion(
                  description: p['description'] as String,
                  placeId: p['place_id'] as String,
                ),
              )
              .toList();
          _showSuggestions = _suggestions.isNotEmpty;
        });
      } else {
        _log.w(
          'Autocomplete non-OK status: ${data?['status']}.  '
          'error_message: ${data?['error_message']}.  '
          'If status is REQUEST_DENIED check: API key is correct, '
          'Places API is enabled in Google Cloud Console, '
          'billing account is active.',
        );
        setState(() {
          _suggestions = const [];
          _showSuggestions = false;
        });
      }
    } catch (e, st) {
      _log.e(
        'Places autocomplete exception for query "$input"',
        error: e,
        stackTrace: st,
      );
      setState(() {
        _suggestions = const [];
        _showSuggestions = false;
      });
    } finally {
      if (mounted) setState(() => _isSearching = false);
    }
  }

  Future<void> _selectPlace(_PlaceSuggestion suggestion) async {
    _log.d(
      'Place selected: "${suggestion.description}"  '
      'placeId: ${suggestion.placeId}',
    );
    setState(() {
      _showSuggestions = false;
      _suggestions = const [];
    });
    _searchController.text = suggestion.description;
    FocusScope.of(context).unfocus();
    try {
      final key = AppEnvironment.googleMapsApiKey.trim();
      final response = await _dio.get<Map<String, dynamic>>(
        'https://maps.googleapis.com/maps/api/place/details/json',
        queryParameters: <String, String>{
          'place_id': suggestion.placeId,
          'fields': 'geometry',
          'key': key,
        },
      );
      final data = response.data;
      if (data != null && data['status'] == 'OK') {
        final loc =
            data['result']['geometry']['location'] as Map<String, dynamic>;
        final target = LatLng(
          (loc['lat'] as num).toDouble(),
          (loc['lng'] as num).toDouble(),
        );
        _log.i('Place details OK → (${target.latitude}, ${target.longitude})');
        _centre = target;
        await _mapController?.animateCamera(
          CameraUpdate.newCameraPosition(
            CameraPosition(target: target, zoom: 15),
          ),
        );
      } else {
        _log.w(
          'Place details non-OK status: ${data?['status']}.  '
          'error_message: ${data?['error_message']}',
        );
      }
    } catch (e, st) {
      _log.e(
        'Place details exception  placeId: ${suggestion.placeId}',
        error: e,
        stackTrace: st,
      );
    }
  }

  // ── build ─────────────────────────────────────────────────────────────────
  @override
  Widget build(BuildContext context) {
    final auth = ref.watch(authControllerProvider);
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        title: Text(context.l10n.chooseLocation),
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(
              icon: const Icon(Icons.bookmark_outline_rounded),
              text: context.l10n.savedTab,
            ),
            Tab(
              icon: const Icon(Icons.map_outlined),
              text: context.l10n.pinOnMapTab,
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          _SavedAddressesTab(
            savedAddresses: auth.savedAddresses,
            onSelect: _selectSavedAddress,
          ),
          _buildMapTab(isDark),
        ],
      ),
    );
  }

  Widget _buildMapTab(bool isDark) {
    final mapStyle = isDark && _mapType == MapType.normal
        ? _darkMapStyle
        : null;

    return Stack(
      children: [
        // ── Google Map ──────────────────────────────────────────────────────
        GoogleMap(
          onMapCreated: _onMapCreated,
          initialCameraPosition: CameraPosition(target: _centre, zoom: 14),
          onCameraMove: _onCameraMove,
          mapType: _mapType,
          style: mapStyle,
          myLocationEnabled: true,
          myLocationButtonEnabled: false,
          zoomControlsEnabled: true,
          zoomGesturesEnabled: true,
          scrollGesturesEnabled: true,
          rotateGesturesEnabled: true,
          tiltGesturesEnabled: true,
          mapToolbarEnabled: false,
        ),

        // ── Fixed centre pin ───────────────────────────────────────────────
        if (_mapReady)
          const Center(
            child: Padding(
              padding: EdgeInsets.only(bottom: 40),
              child: Icon(Icons.location_pin, size: 52, color: Colors.red),
            ),
          ),

        // ── Floating search bar + autocomplete ─────────────────────────────
        Positioned(
          top: 12,
          left: 12,
          right: 12,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Material(
                elevation: 6,
                borderRadius: BorderRadius.circular(14),
                shadowColor: Colors.black38,
                child: TextField(
                  controller: _searchController,
                  onChanged: _searchPlaces,
                  textInputAction: TextInputAction.search,
                  decoration: InputDecoration(
                    hintText: context.l10n.searchPlaces,
                    prefixIcon: const Icon(Icons.search_rounded),
                    suffixIcon: _isSearching
                        ? const Padding(
                            padding: EdgeInsets.all(12),
                            child: SizedBox(
                              width: 18,
                              height: 18,
                              child: CircularProgressIndicator(strokeWidth: 2),
                            ),
                          )
                        : _searchController.text.isNotEmpty
                        ? IconButton(
                            icon: const Icon(Icons.clear_rounded),
                            onPressed: () {
                              _searchController.clear();
                              setState(() {
                                _suggestions = const [];
                                _showSuggestions = false;
                              });
                            },
                          )
                        : null,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                      borderSide: BorderSide.none,
                    ),
                    filled: true,
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 14,
                    ),
                  ),
                ),
              ),
              if (_showSuggestions && _suggestions.isNotEmpty)
                Material(
                  elevation: 6,
                  borderRadius: const BorderRadius.vertical(
                    bottom: Radius.circular(14),
                  ),
                  shadowColor: Colors.black38,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.vertical(
                      bottom: Radius.circular(14),
                    ),
                    child: ListView.separated(
                      shrinkWrap: true,
                      padding: EdgeInsets.zero,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: _suggestions.length.clamp(0, 5),
                      separatorBuilder: (_, __) =>
                          const Divider(height: 1, indent: 48),
                      itemBuilder: (context, i) {
                        final s = _suggestions[i];
                        return ListTile(
                          dense: true,
                          leading: const Icon(Icons.place_outlined, size: 20),
                          title: Text(
                            s.description,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(fontSize: 13),
                          ),
                          onTap: () => _selectPlace(s),
                        );
                      },
                    ),
                  ),
                ),
            ],
          ),
        ),

        // ── Right-side FABs ────────────────────────────────────────────────
        Positioned(
          right: 12,
          bottom: 92,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              FloatingActionButton.small(
                heroTag: 'mapType',
                tooltip: _mapType == MapType.normal
                    ? context.l10n.switchToSatellite
                    : context.l10n.switchToRoadMap,
                backgroundColor: Theme.of(context).colorScheme.surface,
                foregroundColor: Theme.of(context).colorScheme.primary,
                elevation: 4,
                onPressed: _toggleMapType,
                child: Icon(
                  _mapType == MapType.normal
                      ? Icons.satellite_alt_rounded
                      : Icons.map_rounded,
                ),
              ),
              const SizedBox(height: 10),
              FloatingActionButton.small(
                heroTag: 'myLocation',
                tooltip: context.l10n.goToMyLocation,
                backgroundColor: Theme.of(context).colorScheme.surface,
                foregroundColor: Theme.of(context).colorScheme.primary,
                elevation: 4,
                onPressed: _isGettingLocation ? null : _goToCurrentLocation,
                child: _isGettingLocation
                    ? SizedBox(
                        width: 18,
                        height: 18,
                        child: CircularProgressIndicator(
                          strokeWidth: 2,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      )
                    : const Icon(Icons.my_location_rounded),
              ),
            ],
          ),
        ),

        // ── Confirm button ─────────────────────────────────────────────────
        Positioned(
          bottom: 24,
          left: 16,
          right: 70,
          child: FilledButton.icon(
            onPressed: _mapReady ? _confirmPinnedLocation : null,
            icon: const Icon(Icons.check_circle_outline_rounded),
            label: Text(context.l10n.confirmLocation),
            style: FilledButton.styleFrom(
              minimumSize: const Size.fromHeight(52),
            ),
          ),
        ),
      ],
    );
  }
}

// ── Save Address Sheet ────────────────────────────────────────────────────────

/// Bottom sheet shown after the user pins a location on the map.
/// Lets them choose a label (Home / Work / Other), fill in recipient
/// name & phone (with optional contact picker), and then either
/// "Save & Use" (persists to backend, returns AddressInfo with DB id) or
/// "Use Without Saving" (returns AddressInfo with no id).
class _SaveAddressSheet extends ConsumerStatefulWidget {
  const _SaveAddressSheet({required this.geo, required this.centre});

  final _GeoResult geo;
  final LatLng centre;

  @override
  ConsumerState<_SaveAddressSheet> createState() => _SaveAddressSheetState();
}

/// Label options shown as selectable chips at the top of the save sheet.
enum _AddressLabel { home, work, other }

class _SaveAddressSheetState extends ConsumerState<_SaveAddressSheet> {
  late final TextEditingController _nameCtrl;
  late final TextEditingController _phoneCtrl;
  late final TextEditingController _areaCtrl;
  late final TextEditingController _cityCtrl;
  late final TextEditingController _postalCtrl;
  late final TextEditingController _countryCtrl;
  final _formKey = GlobalKey<FormState>();

  _AddressLabel _label = _AddressLabel.home;
  bool _isSaving = false;
  bool _isPickingContact = false;

  @override
  void initState() {
    super.initState();
    final auth = ref.read(authControllerProvider);
    _nameCtrl = TextEditingController(text: auth.name ?? '');
    _phoneCtrl = TextEditingController(text: auth.phoneNumber ?? '');
    _areaCtrl = TextEditingController(text: widget.geo.area ?? '');
    _cityCtrl = TextEditingController(text: widget.geo.city ?? '');
    _postalCtrl = TextEditingController(text: widget.geo.postalCode ?? '');
    _countryCtrl = TextEditingController(text: widget.geo.country ?? 'IN');
  }

  @override
  void dispose() {
    _nameCtrl.dispose();
    _phoneCtrl.dispose();
    _areaCtrl.dispose();
    _cityCtrl.dispose();
    _postalCtrl.dispose();
    _countryCtrl.dispose();
    super.dispose();
  }

  String get _labelString => switch (_label) {
    _AddressLabel.home => 'Home',
    _AddressLabel.work => 'Work',
    _AddressLabel.other => 'Other',
  };

  AddressInfo _buildAddressInfo() => AddressInfo(
    fullAddress: widget.geo.fullAddress,
    area: _areaCtrl.text.trim().isEmpty ? null : _areaCtrl.text.trim(),
    city: _cityCtrl.text.trim().isEmpty ? null : _cityCtrl.text.trim(),
    postalCode: _postalCtrl.text.trim(),
    country: _countryCtrl.text.trim().toUpperCase(),
    latitude: widget.centre.latitude,
    longitude: widget.centre.longitude,
    addressLabel: _labelString,
    contactName: _nameCtrl.text.trim().isEmpty ? null : _nameCtrl.text.trim(),
    contactPhone: _phoneCtrl.text.trim().isEmpty
        ? null
        : _phoneCtrl.text.trim(),
  );

  Future<void> _pickContact() async {
    setState(() => _isPickingContact = true);
    try {
      // Step 1: Open system contact picker — no runtime permission required.
      final contact = await FlutterContacts.openExternalPick();
      if (contact == null || !mounted) return;

      // Pre-fill the display name right away from the basic contact data.
      _nameCtrl.text = contact.displayName;

      // Step 2: Request permission to read the full contact details
      // (phone numbers etc.) which requires the READ_CONTACTS permission.
      final granted = await FlutterContacts.requestPermission(readonly: true);
      if (!mounted) return;

      if (granted) {
        final full = await FlutterContacts.getContact(
          contact.id,
          withProperties: true,
        );
        if (full != null && mounted) {
          _nameCtrl.text = full.displayName;
          if (full.phones.isNotEmpty) {
            _phoneCtrl.text = full.phones.first.number;
          }
        }
      } else {
        // Permission denied — name is already pre-filled; let the user
        // type their phone number manually and offer a path to Settings.
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(context.l10n.contactsAccessDenied),
              action: SnackBarAction(
                label: context.l10n.openSettings,
                onPressed: () async {
                  // flutter_contacts doesn't expose openAppSettings, so we
                  // rely on the user going to Settings manually on iOS or
                  // opening system settings on Android.
                  // Using FlutterContacts.requestPermission again triggers
                  // the OS "go to settings" prompt on repeated denials.
                  await FlutterContacts.requestPermission(readonly: true);
                },
              ),
            ),
          );
        }
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(context.l10n.couldNotOpenContacts)),
        );
      }
    } finally {
      if (mounted) setState(() => _isPickingContact = false);
    }
  }

  Future<void> _saveAndUse() async {
    if (!_formKey.currentState!.validate()) return;
    setState(() => _isSaving = true);
    try {
      final address = _buildAddressInfo();
      final saved = await ref
          .read(authControllerProvider.notifier)
          .addSavedAddress(address);
      if (mounted) {
        // saved has DB id if successful, else fall back to local address
        Navigator.of(context).pop(saved ?? address);
      }
    } finally {
      if (mounted) setState(() => _isSaving = false);
    }
  }

  void _useWithoutSaving() {
    if (!_formKey.currentState!.validate()) return;
    Navigator.of(context).pop(_buildAddressInfo());
  }

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final tt = Theme.of(context).textTheme;

    return Padding(
      padding: EdgeInsets.only(
        left: 20,
        right: 20,
        top: 20,
        bottom: MediaQuery.of(context).viewInsets.bottom + 24,
      ),
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Handle bar
              Center(
                child: Container(
                  width: 40,
                  height: 4,
                  margin: const EdgeInsets.only(bottom: 16),
                  decoration: BoxDecoration(
                    color: cs.outlineVariant,
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
              ),

              Text(
                context.l10n.saveAddress,
                style: tt.titleMedium?.copyWith(fontWeight: FontWeight.w700),
              ),
              const SizedBox(height: 4),
              Text(context.l10n.saveAddressSubtitle, style: tt.bodySmall),
              const SizedBox(height: 16),

              // Full address banner (read-only)
              if (widget.geo.fullAddress != null) ...[
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: cs.surfaceContainerHighest.withValues(alpha: 0.5),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.location_on_rounded,
                        size: 18,
                        color: cs.primary,
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          widget.geo.fullAddress!,
                          style: tt.bodySmall,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
              ],

              // Label chips: Home / Work / Other
              Text(context.l10n.labelField, style: tt.labelMedium),
              const SizedBox(height: 8),
              Wrap(
                spacing: 8,
                children: _AddressLabel.values.map((l) {
                  final selected = _label == l;
                  final (icon, text) = switch (l) {
                    _AddressLabel.home => (
                      Icons.home_rounded,
                      context.l10n.labelHome,
                    ),
                    _AddressLabel.work => (
                      Icons.work_outline_rounded,
                      context.l10n.labelWork,
                    ),
                    _AddressLabel.other => (
                      Icons.place_outlined,
                      context.l10n.labelOther,
                    ),
                  };
                  return ChoiceChip(
                    avatar: Icon(icon, size: 16),
                    label: Text(text),
                    selected: selected,
                    onSelected: (_) => setState(() => _label = l),
                  );
                }).toList(),
              ),
              const SizedBox(height: 16),

              // Recipient name
              TextFormField(
                controller: _nameCtrl,
                textInputAction: TextInputAction.next,
                textCapitalization: TextCapitalization.words,
                decoration: InputDecoration(
                  labelText: context.l10n.recipientName,
                  hintText: context.l10n.recipientNameHint,
                  prefixIcon: const Icon(Icons.person_outline_rounded),
                ),
              ),
              const SizedBox(height: 12),

              // Recipient phone + contacts picker
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: TextFormField(
                      controller: _phoneCtrl,
                      keyboardType: TextInputType.phone,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        labelText: context.l10n.recipientPhone,
                        hintText: context.l10n.recipientPhoneHint,
                        prefixIcon: const Icon(Icons.phone_outlined),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Padding(
                    padding: const EdgeInsets.only(top: 4),
                    child: IconButton.outlined(
                      tooltip: context.l10n.pickFromContacts,
                      icon: _isPickingContact
                          ? const SizedBox(
                              width: 18,
                              height: 18,
                              child: CircularProgressIndicator(strokeWidth: 2),
                            )
                          : const Icon(Icons.contacts_outlined),
                      onPressed: _isPickingContact ? null : _pickContact,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),

              // Area / Neighbourhood
              TextFormField(
                controller: _areaCtrl,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  labelText: context.l10n.areaNeighbourhood,
                  hintText: context.l10n.areaHint,
                  prefixIcon: const Icon(Icons.place_outlined),
                ),
              ),
              const SizedBox(height: 12),

              // City
              TextFormField(
                controller: _cityCtrl,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  labelText: context.l10n.cityLabel,
                  hintText: context.l10n.cityHint,
                  prefixIcon: const Icon(Icons.location_city_outlined),
                ),
              ),
              const SizedBox(height: 12),

              // Postal Code — REQUIRED
              TextFormField(
                controller: _postalCtrl,
                keyboardType: TextInputType.number,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  labelText: context.l10n.postalCodeRequired,
                  hintText: context.l10n.postalCodeHint,
                  prefixIcon: const Icon(Icons.markunread_mailbox_outlined),
                ),
                validator: (v) => (v == null || v.trim().isEmpty)
                    ? context.l10n.required
                    : null,
              ),
              const SizedBox(height: 12),

              // Country code
              TextFormField(
                controller: _countryCtrl,
                textInputAction: TextInputAction.done,
                maxLength: 2,
                decoration: InputDecoration(
                  labelText: context.l10n.countryCodeRequired,
                  hintText: context.l10n.countryCodeHint,
                  prefixIcon: const Icon(Icons.flag_outlined),
                  counterText: '',
                ),
                validator: (v) => (v == null || v.trim().isEmpty)
                    ? context.l10n.required
                    : null,
              ),
              const SizedBox(height: 24),

              // Action buttons
              Row(
                children: [
                  Expanded(
                    child: OutlinedButton(
                      onPressed: _isSaving ? null : _useWithoutSaving,
                      child: Text(context.l10n.useWithoutSaving),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: FilledButton.icon(
                      icon: _isSaving
                          ? const SizedBox(
                              width: 16,
                              height: 16,
                              child: CircularProgressIndicator(
                                strokeWidth: 2,
                                color: Colors.white,
                              ),
                            )
                          : const Icon(Icons.save_outlined),
                      label: Text(context.l10n.saveAndUse),
                      onPressed: _isSaving ? null : _saveAndUse,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ── Saved Addresses Tab ───────────────────────────────────────────────────────

/// Live-GPS tile at the top + saved DB addresses below.
/// Converted to a [ConsumerStatefulWidget] so it can fetch the device
/// GPS position independently without blocking the whole screen.
class _SavedAddressesTab extends ConsumerStatefulWidget {
  const _SavedAddressesTab({
    required this.savedAddresses,
    required this.onSelect,
  });

  final List<AddressInfo> savedAddresses;
  final void Function(AddressInfo) onSelect;

  @override
  ConsumerState<_SavedAddressesTab> createState() => _SavedAddressesTabState();
}

class _SavedAddressesTabState extends ConsumerState<_SavedAddressesTab> {
  Position? _livePos;
  String? _liveDisplayText;
  bool _fetchingGps = true;

  @override
  void initState() {
    super.initState();
    _fetchGps();
  }

  Future<void> _fetchGps() async {
    try {
      var permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
      }
      if (permission == LocationPermission.deniedForever) {
        if (mounted) setState(() => _fetchingGps = false);
        return;
      }

      // Fast: try last known first
      final last = await Geolocator.getLastKnownPosition();
      if (last != null && mounted) {
        setState(() {
          _livePos = last;
          _fetchingGps = false;
        });
        _reverseGeocode(last);
      }

      // Accurate: update in background
      final current = await Geolocator.getCurrentPosition(
        locationSettings: const LocationSettings(
          accuracy: LocationAccuracy.high,
        ),
      );
      if (mounted) {
        setState(() {
          _livePos = current;
          _fetchingGps = false;
        });
        _reverseGeocode(current);
      }
    } catch (_) {
      if (mounted) setState(() => _fetchingGps = false);
    }
  }

  Future<void> _reverseGeocode(Position pos) async {
    try {
      final marks = await geo.placemarkFromCoordinates(
        pos.latitude,
        pos.longitude,
      );
      if (marks.isEmpty || !mounted) return;
      final p = marks.first;
      final parts = <String>[
        if (p.subLocality != null && p.subLocality!.isNotEmpty) p.subLocality!,
        if (p.locality != null && p.locality!.isNotEmpty) p.locality!,
      ];
      if (parts.isNotEmpty && mounted) {
        setState(() => _liveDisplayText = parts.join(', '));
      }
    } catch (_) {}
  }

  void _selectGps() {
    if (_livePos == null) return;
    widget.onSelect(
      AddressInfo(
        latitude: _livePos!.latitude,
        longitude: _livePos!.longitude,
        fullAddress: _liveDisplayText,
        area: _liveDisplayText?.split(', ').firstOrNull,
        city: _liveDisplayText?.split(', ').lastOrNull,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final addresses = widget.savedAddresses;

    if (!_fetchingGps && _livePos == null && addresses.isEmpty) {
      return Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.location_off_outlined, size: 56, color: cs.outline),
              const SizedBox(height: 16),
              Text(
                'No saved addresses yet',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(height: 8),
              Text(
                'Switch to the Pin on Map tab to pick any location.',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ],
          ),
        ),
      );
    }

    return ListView.separated(
      padding: const EdgeInsets.all(16),
      itemCount: 1 + addresses.length, // GPS tile + saved addresses
      separatorBuilder: (_, __) => const SizedBox(height: 8),
      itemBuilder: (context, index) {
        // ── GPS tile (always first) ───────────────────────────────────────
        if (index == 0) {
          return Card(
            color: cs.primaryContainer.withValues(alpha: 0.35),
            child: ListTile(
              leading: Icon(Icons.my_location_rounded, color: cs.primary),
              title: Text(context.l10n.useMyCurrentLocation),
              subtitle: _fetchingGps
                  ? Text(context.l10n.detectingLocation)
                  : Text(
                      _liveDisplayText ?? 'GPS location ready',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
              trailing: _fetchingGps
                  ? SizedBox(
                      width: 18,
                      height: 18,
                      child: CircularProgressIndicator(
                        strokeWidth: 2,
                        color: cs.primary,
                      ),
                    )
                  : Icon(Icons.chevron_right_rounded, color: cs.primary),
              onTap: (_fetchingGps || _livePos == null) ? null : _selectGps,
            ),
          );
        }

        // ── Saved address tiles ───────────────────────────────────────────
        final addr = addresses[index - 1];

        return Card(
          child: ListTile(
            leading: Icon(
              _iconForLabel(addr.addressLabel),
              color: cs.secondary,
            ),
            title: Text(
              addr.addressLabel != null
                  ? '${addr.addressLabel!} — ${addr.displayName}'
                  : addr.displayName,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            subtitle: addr.fullAddress != null
                ? Text(
                    addr.fullAddress!,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  )
                : null,
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (addr.id != null)
                  IconButton(
                    icon: const Icon(Icons.delete_outline_rounded, size: 20),
                    tooltip: context.l10n.tooltipDeleteAddress,
                    onPressed: () async {
                      final confirmed = await showDialog<bool>(
                        context: context,
                        builder: (ctx) => AlertDialog(
                          title: Text(context.l10n.tooltipDeleteAddress),
                          content: Text(
                            context.l10n.confirmDeleteAddress(
                              addr.addressLabel ?? addr.displayName,
                            ),
                          ),
                          actions: [
                            TextButton(
                              onPressed: () => Navigator.of(ctx).pop(false),
                              child: Text(context.l10n.cancel),
                            ),
                            FilledButton(
                              onPressed: () => Navigator.of(ctx).pop(true),
                              child: Text(context.l10n.delete),
                            ),
                          ],
                        ),
                      );
                      if (confirmed == true && addr.id != null) {
                        final ok = await ref
                            .read(authControllerProvider.notifier)
                            .deleteSavedAddress(addr.id!);
                        if (context.mounted) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                ok
                                    ? 'Address removed'
                                    : 'Failed to remove address',
                              ),
                            ),
                          );
                        }
                      }
                    },
                  ),
                const Icon(Icons.chevron_right_rounded),
              ],
            ),
            onTap: () => widget.onSelect(addr),
          ),
        );
      },
    );
  }
}

IconData _iconForLabel(String? label) {
  return switch (label?.toLowerCase()) {
    'home' => Icons.home_rounded,
    'work' => Icons.work_outline_rounded,
    _ => Icons.location_on_outlined,
  };
}
