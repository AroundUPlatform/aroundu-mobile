import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geolocator/geolocator.dart';

import '../../../../app.dart';
import '../view_model/auth_ui_view_model.dart';
import '../view_model/auth_view_model.dart';
import '../../../core/network/exchange_rate_service.dart';
import '../../../core/theme/app_theme.dart';
import '../../../core/widgets/app_notification.dart';
import '../../../core/widgets/primary_button.dart';
import '../../../core/l10n/l10n_extension.dart';

class RegisterScreen extends ConsumerStatefulWidget {
  const RegisterScreen({super.key});

  @override
  ConsumerState<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends ConsumerState<RegisterScreen> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  final _passwordController = TextEditingController();
  final _cityController = TextEditingController();
  final _postalCodeController = TextEditingController();
  final _areaController = TextEditingController();
  final _fullAddressController = TextEditingController();

  double? _latitude;
  double? _longitude;

  @override
  void initState() {
    super.initState();
    _fetchCurrentLocation();
    _autoDetectLocale();
  }

  void _autoDetectLocale() {
    try {
      final locale = Platform.localeName; // e.g. "en_IN" or "en_US"
      final parts = locale.split('_');
      final countryCode = parts.length > 1 ? parts.last.toUpperCase() : 'IN';
      final currency = defaultCurrencyForCountry(countryCode);
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (!mounted) return;
        final notifier = ref.read(registerFormUiProvider.notifier);
        notifier.setCountry(countryCode);
        notifier.setCurrency(currency);
      });
    } catch (_) {
      // Locale detection failed — keep defaults.
    }
  }

  Future<void> _fetchCurrentLocation() async {
    try {
      var permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
      }
      if (permission == LocationPermission.deniedForever ||
          permission == LocationPermission.denied) {
        return;
      }
      final pos = await Geolocator.getCurrentPosition(
        locationSettings: const LocationSettings(
          accuracy: LocationAccuracy.high,
        ),
      );
      if (mounted) {
        setState(() {
          _latitude = pos.latitude;
          _longitude = pos.longitude;
        });
      }
    } catch (_) {
      // Location unavailable — coordinates will be omitted from registration.
    }
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    _passwordController.dispose();
    _cityController.dispose();
    _postalCodeController.dispose();
    _areaController.dispose();
    _fullAddressController.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    final form = _formKey.currentState;
    if (form == null || !form.validate()) {
      return;
    }
    final registerUi = ref.read(registerFormUiProvider);

    final city = _cityController.text.trim();
    final postalCode = _postalCodeController.text.trim();
    final area = _areaController.text.trim().isEmpty
        ? city
        : _areaController.text.trim();
    final fallbackAddress = '$city, $postalCode, ${registerUi.selectedCountry}';
    final fullAddress = _fullAddressController.text.trim().isEmpty
        ? fallbackAddress
        : _fullAddressController.text.trim();

    final input = RegisterUserInput(
      role: registerUi.selectedRole,
      name: _nameController.text.trim(),
      email: _emailController.text.trim(),
      phoneNumber: _phoneController.text.trim(),
      password: _passwordController.text,
      country: registerUi.selectedCountry,
      postalCode: postalCode,
      city: city,
      area: area,
      fullAddress: fullAddress,
      latitude: _latitude ?? 0.0,
      longitude: _longitude ?? 0.0,
      currency: registerUi.selectedCurrency,
      skillIds: registerUi.selectedRole == UserRole.worker
          ? const <int>[1]
          : const <int>[],
    );

    final success = await ref
        .read(authControllerProvider.notifier)
        .register(input);

    if (!mounted) {
      return;
    }

    final authState = ref.read(authControllerProvider);
    if (!success) {
      final error = authState.errorMessage ?? context.l10n.unableToRegister;
      AppNotifier.showError(context, error);
      return;
    }

    AppNotifier.showSuccess(context, context.l10n.registrationSuccess);

    Navigator.pushReplacementNamed(context, AppRoutes.login);
  }

  @override
  Widget build(BuildContext context) {
    final authState = ref.watch(authControllerProvider);
    final registerUi = ref.watch(registerFormUiProvider);

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  context.l10n.registerTitle,
                  style: Theme.of(
                    context,
                  ).textTheme.titleLarge?.copyWith(fontSize: 30),
                ),
                const SizedBox(height: 8),
                Text(
                  context.l10n.registerSubtitle,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                const SizedBox(height: 16),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          context.l10n.roleLabel,
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        const SizedBox(height: 8),
                        Row(
                          children: [
                            ChoiceChip(
                              label: Text(context.l10n.roleJobProvider),
                              selected:
                                  registerUi.selectedRole == UserRole.provider,
                              onSelected: authState.isLoading
                                  ? null
                                  : (_) {
                                      ref
                                          .read(registerFormUiProvider.notifier)
                                          .setRole(UserRole.provider);
                                    },
                            ),
                            const SizedBox(width: 8),
                            ChoiceChip(
                              label: Text(context.l10n.roleJobWorker),
                              selected:
                                  registerUi.selectedRole == UserRole.worker,
                              onSelected: authState.isLoading
                                  ? null
                                  : (_) {
                                      ref
                                          .read(registerFormUiProvider.notifier)
                                          .setRole(UserRole.worker);
                                    },
                            ),
                          ],
                        ),
                        const SizedBox(height: 12),
                        TextFormField(
                          controller: _nameController,
                          textInputAction: TextInputAction.next,
                          validator: (value) {
                            if (value == null || value.trim().isEmpty)
                              return context.l10n.fieldRequired(
                                context.l10n.fullName,
                              );
                            return null;
                          },
                          decoration: InputDecoration(
                            labelText: context.l10n.fullName,
                            prefixIcon: const Icon(Icons.badge_outlined),
                          ),
                        ),
                        const SizedBox(height: 12),
                        TextFormField(
                          controller: _emailController,
                          keyboardType: TextInputType.emailAddress,
                          textInputAction: TextInputAction.next,
                          validator: (value) {
                            if (value == null || value.trim().isEmpty)
                              return context.l10n.fieldRequired(
                                context.l10n.emailLabel,
                              );
                            if (!RegExp(
                              r'^[^@\s]+@[^@\s]+\.[^@\s]+$',
                            ).hasMatch(value.trim()))
                              return context.l10n.enterValidEmail;
                            return null;
                          },
                          decoration: InputDecoration(
                            labelText: context.l10n.emailLabel,
                            prefixIcon: const Icon(
                              Icons.alternate_email_rounded,
                            ),
                          ),
                        ),
                        const SizedBox(height: 12),
                        TextFormField(
                          controller: _phoneController,
                          keyboardType: TextInputType.phone,
                          textInputAction: TextInputAction.next,
                          validator: (value) {
                            if (value == null || value.trim().isEmpty)
                              return context.l10n.fieldRequired(
                                context.l10n.phone,
                              );
                            if (!RegExp(
                              r'^[+]?\d{10,15}$',
                            ).hasMatch(value.trim()))
                              return context.l10n.enterValidPhone;
                            return null;
                          },
                          decoration: InputDecoration(
                            labelText: context.l10n.phone,
                            prefixIcon: const Icon(Icons.call_outlined),
                          ),
                        ),
                        const SizedBox(height: 12),
                        TextFormField(
                          controller: _passwordController,
                          obscureText: registerUi.isPasswordObscured,
                          textInputAction: TextInputAction.next,
                          validator: (value) {
                            if (value == null || value.trim().isEmpty)
                              return context.l10n.fieldRequired(
                                context.l10n.passwordLabel,
                              );
                            if (value.length < 6)
                              return context.l10n.minimumSixCharacters;
                            return null;
                          },
                          decoration: InputDecoration(
                            labelText: context.l10n.passwordLabel,
                            prefixIcon: const Icon(Icons.lock_outline_rounded),
                            suffixIcon: IconButton(
                              onPressed: () {
                                ref
                                    .read(registerFormUiProvider.notifier)
                                    .togglePasswordVisibility();
                              },
                              icon: Icon(
                                registerUi.isPasswordObscured
                                    ? Icons.visibility_outlined
                                    : Icons.visibility_off_outlined,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 12),
                        Row(
                          children: [
                            Expanded(
                              child: DropdownButtonFormField<String>(
                                isExpanded: true,
                                initialValue: registerUi.selectedCountry,
                                decoration: InputDecoration(
                                  labelText: context.l10n.countryLabel,
                                  prefixIcon: const Icon(Icons.flag_outlined),
                                ),
                                items: kCountryToCurrency.keys
                                    .map(
                                      (code) => DropdownMenuItem(
                                        value: code,
                                        child: Text(code),
                                      ),
                                    )
                                    .toList(),
                                onChanged: authState.isLoading
                                    ? null
                                    : (value) {
                                        if (value == null) {
                                          return;
                                        }
                                        ref
                                            .read(
                                              registerFormUiProvider.notifier,
                                            )
                                            .setCountry(value);
                                      },
                              ),
                            ),
                            const SizedBox(width: 10),
                            Expanded(
                              child: DropdownButtonFormField<String>(
                                isExpanded: true,
                                initialValue: registerUi.selectedCurrency,
                                decoration: InputDecoration(
                                  labelText: context.l10n.currencyLabel,
                                  prefixIcon: const Icon(
                                    Icons.currency_exchange_outlined,
                                  ),
                                ),
                                items: kCurrencySymbols.entries
                                    .map(
                                      (e) => DropdownMenuItem(
                                        value: e.key,
                                        child: Text(
                                          '${e.key}  ${e.value}',
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                    )
                                    .toList(),
                                onChanged: authState.isLoading
                                    ? null
                                    : (value) {
                                        if (value == null) {
                                          return;
                                        }
                                        ref
                                            .read(
                                              registerFormUiProvider.notifier,
                                            )
                                            .setCurrency(value);
                                      },
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 12),
                        TextFormField(
                          controller: _cityController,
                          textInputAction: TextInputAction.next,
                          validator: (value) {
                            if (value == null || value.trim().isEmpty)
                              return context.l10n.fieldRequired(
                                context.l10n.cityLabel,
                              );
                            return null;
                          },
                          decoration: InputDecoration(
                            labelText: context.l10n.cityLabel,
                            prefixIcon: const Icon(
                              Icons.location_city_outlined,
                            ),
                          ),
                        ),
                        const SizedBox(height: 12),
                        TextFormField(
                          controller: _postalCodeController,
                          textInputAction: TextInputAction.next,
                          validator: (value) {
                            if (value == null || value.trim().isEmpty)
                              return context.l10n.fieldRequired(
                                context.l10n.postalCodeLabel,
                              );
                            return null;
                          },
                          decoration: InputDecoration(
                            labelText: context.l10n.postalCodeLabel,
                            prefixIcon: const Icon(
                              Icons.local_post_office_outlined,
                            ),
                          ),
                        ),
                        const SizedBox(height: 12),
                        TextFormField(
                          controller: _areaController,
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                            labelText: context.l10n.areaOptionalLabel,
                            prefixIcon: const Icon(Icons.pin_drop_outlined),
                          ),
                        ),
                        const SizedBox(height: 12),
                        TextFormField(
                          controller: _fullAddressController,
                          textInputAction: TextInputAction.done,
                          maxLines: 2,
                          decoration: InputDecoration(
                            labelText: context.l10n.fullAddressOptionalLabel,
                            prefixIcon: const Icon(Icons.home_work_outlined),
                            alignLabelWithHint: true,
                          ),
                        ),
                        const SizedBox(height: 16),
                        PrimaryButton(
                          label: context.l10n.registerButton,
                          isLoading: authState.isLoading,
                          onPressed: authState.isLoading ? null : _submit,
                        ),
                      ],
                    ),
                  ),
                ),
                if (authState.errorMessage != null) ...[
                  const SizedBox(height: 10),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 10,
                    ),
                    decoration: BoxDecoration(
                      color: AppPalette.danger.withValues(alpha: 0.08),
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: AppPalette.danger.withValues(alpha: 0.28),
                      ),
                    ),
                    child: Text(
                      authState.errorMessage!,
                      style: const TextStyle(
                        color: AppPalette.danger,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
                const SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(context.l10n.alreadyRegistered),
                    TextButton(
                      onPressed: authState.isLoading
                          ? null
                          : () {
                              Navigator.pushReplacementNamed(
                                context,
                                AppRoutes.login,
                              );
                            },
                      child: Text(context.l10n.logInLink),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
