
import 'plugin_test_epson_platform_interface.dart';

class PluginTestEpson {
  Future<String?> getPlatformVersion() {
    return PluginTestEpsonPlatform.instance.getPlatformVersion();
  }
}
