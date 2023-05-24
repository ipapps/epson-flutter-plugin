import Flutter
import UIKit

public class PluginTestEpsonPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "plugin_test_epson", binaryMessenger: registrar.messenger())
    let instance = PluginTestEpsonPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  @objc public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch call.method {
    case "getPlatformVersion":
       // result("iOS " + Bridge().getEposStatus())
     result("iOS " + UIDevice.current.systemVersion)
    default:
      result(FlutterMethodNotImplemented)
    }
  }

}
