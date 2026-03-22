import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:path_provider/path_provider.dart';

/// Result of a device compatibility check.
class DeviceCompatibility {
  final bool isPhysical;
  final int ramMb;
  final int freeStorageMb;

  const DeviceCompatibility({
    required this.isPhysical,
    required this.ramMb,
    required this.freeStorageMb,
  });
}

/// Checks whether the current device can run on-device AI models.
class DeviceChecker {
  const DeviceChecker._();

  /// Run all checks and return a [DeviceCompatibility] snapshot.
  static Future<DeviceCompatibility> check() async {
    final results = await Future.wait([
      isPhysicalDevice(),
      getAvailableRamMb(),
      getFreeStorageMb(),
    ]);
    return DeviceCompatibility(
      isPhysical: results[0] as bool,
      ramMb: results[1] as int,
      freeStorageMb: results[2] as int,
    );
  }

  /// Returns `true` when running on real hardware (not a simulator / emulator).
  static Future<bool> isPhysicalDevice() async {
    final info = DeviceInfoPlugin();
    if (Platform.isIOS) {
      return (await info.iosInfo).isPhysicalDevice;
    } else if (Platform.isAndroid) {
      return (await info.androidInfo).isPhysicalDevice;
    }
    return false;
  }

  /// Best-effort total RAM in MB.
  static Future<int> getAvailableRamMb() async {
    if (Platform.isAndroid) {
      try {
        final contents = await File('/proc/meminfo').readAsString();
        final match = RegExp(r'MemTotal:\s+(\d+)\s+kB').firstMatch(contents);
        if (match != null) {
          final kb = int.parse(match.group(1)!);
          return (kb / 1024).round();
        }
      } catch (_) {}
    }
    // iOS or fallback — assume plenty of RAM; the actual load call will fail
    // gracefully if there isn't enough.
    return 99999;
  }

  /// Free disk space in MB.
  static Future<int> getFreeStorageMb() async {
    try {
      final dir = await getApplicationDocumentsDirectory();
      final result = await Process.run('df', [dir.path]);
      if (result.exitCode == 0) {
        final lines = (result.stdout as String).trim().split('\n');
        if (lines.length >= 2) {
          final parts = lines[1].split(RegExp(r'\s+'));
          if (parts.length >= 4) {
            final availKb = int.tryParse(parts[3]) ?? 0;
            return (availKb / 1024).round();
          }
        }
      }
    } catch (_) {}
    return 0;
  }
}
