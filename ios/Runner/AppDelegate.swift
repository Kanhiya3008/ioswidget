import UIKit
import Flutter

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)
      // if let controller = window?.rootViewController as? FlutterViewController {
      //           let dataSavingChannel = FlutterMethodChannel(
      //               name: "data_saving_channel",
      //               binaryMessenger: controller.binaryMessenger
      //           )
                
      //           dataSavingChannel.setMethodCallHandler { call, result in
      //               if call.method == "setItem" {
      //                   if let args = call.arguments as? [String: Any],
      //                      let key = args["key"] as? String,
      //                      let value = args["value"],
      //                      let appGroup = args["appGroup"] as? String {
      //                       let sharedDefaults = UserDefaults(suiteName: appGroup)
      //                       sharedDefaults?.setValue(value, forKey: key)
      //                       result("Data saved successfully!")
      //                   } else {
      //                       result(FlutterError(
      //                           code: "InvalidArguments",
      //                           message: "Invalid arguments",
      //                           details: nil
      //                       ))
      //                   }
      //               } else {
      //                   result(FlutterMethodNotImplemented)
      //               }
      //           }
      //       }

    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
