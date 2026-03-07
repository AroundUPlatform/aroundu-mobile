import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Fetches live exchange rates from Frankfurter (https://api.frankfurter.app).
/// Free, no API key required, ECB data. Rates are cached for 1 hour.
class ExchangeRateService {
  ExchangeRateService._();

  static final ExchangeRateService instance = ExchangeRateService._();

  final Dio _dio = Dio(
    BaseOptions(
      baseUrl: 'https://api.frankfurter.app',
      connectTimeout: const Duration(seconds: 8),
      receiveTimeout: const Duration(seconds: 8),
    ),
  );

  final Map<String, _CachedRate> _cache = {};
  static const Duration _cacheTtl = Duration(hours: 1);

  /// Returns the conversion rate from [from] to [to].
  /// Returns null if the API call fails or currencies are unsupported.
  Future<double?> getRate(String from, String to) async {
    final fromCode = from.trim().toUpperCase();
    final toCode = to.trim().toUpperCase();

    if (fromCode == toCode) return 1.0;

    final key = '${fromCode}_$toCode';
    final cached = _cache[key];
    if (cached != null &&
        DateTime.now().difference(cached.fetchedAt) < _cacheTtl) {
      return cached.rate;
    }

    try {
      final response = await _dio.get<Map<String, dynamic>>(
        '/latest',
        queryParameters: {'from': fromCode, 'to': toCode},
      );

      final data = response.data;
      final rates = data?['rates'] as Map<String, dynamic>?;
      final rate = (rates?[toCode] as num?)?.toDouble();
      if (rate != null) {
        _cache[key] = _CachedRate(rate, DateTime.now());
      }
      return rate;
    } catch (_) {
      return null;
    }
  }
}

class _CachedRate {
  const _CachedRate(this.rate, this.fetchedAt);
  final double rate;
  final DateTime fetchedAt;
}

/// Currency code → symbol map for known currencies.
const Map<String, String> kCurrencySymbols = {
  'USD': '\$',
  'EUR': '€',
  'GBP': '£',
  'JPY': '¥',
  'CNY': '¥',
  'INR': '₹',
  'AUD': 'A\$',
  'CAD': 'C\$',
  'CHF': 'CHF',
  'AED': 'AED',
  'RUB': '₽',
  'KRW': '₩',
  'BRL': 'R\$',
  'ZAR': 'R',
  'HKD': 'HK\$',
  'SGD': 'S\$',
  'SEK': 'kr',
  'NOK': 'kr',
  'NZD': 'NZ\$',
  'MXN': '\$',
  'SAR': 'SAR',
  'TRY': '₺',
  'THB': '฿',
  'MYR': 'RM',
  'PHP': '₱',
  'IDR': 'Rp',
  'PLN': 'zł',
  'DKK': 'kr',
  'HUF': 'Ft',
  'CZK': 'Kč',
  'ILS': '₪',
  'CLP': '\$',
  'VND': '₫',
  'PKR': 'Rs',
};

String currencySymbol(String code) =>
    kCurrencySymbols[code.toUpperCase()] ?? code;

/// Map from device locale country code to default currency code.
const Map<String, String> kCountryToCurrency = {
  'IN': 'INR',
  'US': 'USD',
  'GB': 'GBP',
  'DE': 'EUR',
  'FR': 'EUR',
  'IT': 'EUR',
  'ES': 'EUR',
  'NL': 'EUR',
  'BE': 'EUR',
  'AT': 'EUR',
  'JP': 'JPY',
  'CN': 'CNY',
  'AU': 'AUD',
  'CA': 'CAD',
  'CH': 'CHF',
  'AE': 'AED',
  'RU': 'RUB',
  'KR': 'KRW',
  'BR': 'BRL',
  'ZA': 'ZAR',
  'HK': 'HKD',
  'SG': 'SGD',
  'SE': 'SEK',
  'NO': 'NOK',
  'NZ': 'NZD',
  'MX': 'MXN',
  'SA': 'SAR',
  'TR': 'TRY',
  'TH': 'THB',
  'MY': 'MYR',
  'PH': 'PHP',
  'ID': 'IDR',
  'PL': 'PLN',
  'DK': 'DKK',
  'HU': 'HUF',
  'CZ': 'CZK',
  'IL': 'ILS',
  'CL': 'CLP',
  'VN': 'VND',
  'PK': 'PKR',
};

String defaultCurrencyForCountry(String countryCode) =>
    kCountryToCurrency[countryCode.toUpperCase()] ?? 'USD';

/// Riverpod provider so widgets can call `ref.read(exchangeRateServiceProvider)`.
final exchangeRateServiceProvider = Provider<ExchangeRateService>(
  (_) => ExchangeRateService.instance,
);
