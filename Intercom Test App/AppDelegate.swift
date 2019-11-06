//
//  AppDelegate.swift
//  Intercom Test App
//

import UIKit
import Intercom

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
  var window: UIWindow?


  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    // Override point for customization after application launch.

    Intercom.setApiKey("<Your iOS API Key>", forAppId: "<Your App ID>")
    Intercom.registerUnidentifiedUser()
    return true
  }

  func application(_ application: UIApplication, didChangeStatusBarFrame oldStatusBarFrame: CGRect) {
    if #available(iOS 13.0, *) {
          print("didChangeStatusBarFrame from: \(oldStatusBarFrame)")
      guard let statusBarManager = UIApplication.shared.keyWindow?.windowScene?.statusBarManager else { return }
      print("didChangeStatusBarFrame to: \(statusBarManager.statusBarFrame)")
    }
  }


}

