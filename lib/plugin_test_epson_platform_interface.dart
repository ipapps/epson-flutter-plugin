import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'plugin_test_epson_method_channel.dart';

abstract class PluginTestEpsonPlatform extends PlatformInterface {
  /// Constructs a PluginTestEpsonPlatform.
  PluginTestEpsonPlatform() : super(token: _token);

  static final Object _token = Object();

  static PluginTestEpsonPlatform _instance = MethodChannelPluginTestEpson();

  /// The default instance of [PluginTestEpsonPlatform] to use.
  ///
  /// Defaults to [MethodChannelPluginTestEpson].
  static PluginTestEpsonPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [PluginTestEpsonPlatform] when
  /// they register themselves.
  static set instance(PluginTestEpsonPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
