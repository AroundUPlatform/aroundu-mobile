import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

/// Centralised access to environment variables loaded from the bundled `.env`
/// file via [flutter_dotenv].  Call [dotenv.load] in `main()` before accessing
/// any of these values.
class AppEnvironment {
  /// Google Maps API key — used for runtime Google services (geocoding, etc.).
  /// The same key must also be in `android/local.properties` for native tile
  /// rendering on Android.
  static String get googleMapsApiKey => dotenv.env['GOOGLE_MAPS_API_KEY'] ?? '';

  /// Backend API base URL.
  static String get apiBaseUrl {
    final androidBaseURL = dotenv.env['API_BASE_URL_ANDROID'] ?? '';
    final commonBaseURL = dotenv.env['API_BASE_URL_OTHERS'] ?? '';

    // Sensible fallback when .env is missing / key absent
    if (kIsWeb) return commonBaseURL;
    return switch (defaultTargetPlatform) {
      TargetPlatform.android => androidBaseURL,
      _ => commonBaseURL,
    };
  }

  /// Symmetric key for payload encryption (ChaCha20-Poly1305).
  /// Must be a 32-byte key, Base64-encoded in the .env file.
  static String get payloadEncryptionKey =>
      dotenv.env['PAYLOAD_ENCRYPTION_KEY'] ?? '';
}
