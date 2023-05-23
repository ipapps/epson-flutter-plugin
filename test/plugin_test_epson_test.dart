import 'package:flutter_test/flutter_test.dart';
import 'package:plugin_test_epson/plugin_test_epson.dart';
import 'package:plugin_test_epson/plugin_test_epson_platform_interface.dart';
import 'package:plugin_test_epson/plugin_test_epson_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockPluginTestEpsonPlatform
    with MockPlatformInterfaceMixin
    implements PluginTestEpsonPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final PluginTestEpsonPlatform initialPlatform = PluginTestEpsonPlatform.instance;

  test('$MethodChannelPluginTestEpson is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelPluginTestEpson>());
  });

  test('getPlatformVersion', () async {
    PluginTestEpson pluginTestEpsonPlugin = PluginTestEpson();
    MockPluginTestEpsonPlatform fakePlatform = MockPluginTestEpsonPlatform();
    PluginTestEpsonPlatform.instance = fakePlatform;

    expect(await pluginTestEpsonPlugin.getPlatformVersion(), '42');
  });
}
