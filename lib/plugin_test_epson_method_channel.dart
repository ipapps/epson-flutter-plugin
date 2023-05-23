import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'plugin_test_epson_platform_interface.dart';

/// An implementation of [PluginTestEpsonPlatform] that uses method channels.
class MethodChannelPluginTestEpson extends PluginTestEpsonPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('plugin_test_epson');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
