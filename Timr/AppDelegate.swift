//
//  AppDelegate.swift
//  Timr
//
//  Created by Jan Dammshäuser on 08.01.18.
//  Copyright © 2018 Jan Dammshäuser. All rights reserved.
//

import UIKit
import JDCoordinator
import RxSwift

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

	var window: UIWindow?
	private var rootViewController: UINavigationController!
	private var appCoordinator: JDAppCoordinator!


	func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
		setupApp()

		return true
	}

	private func setupApp() {
		let webService = TimingWebService()
		let storage = TimingStorage(webService: webService)
		let windowRect = UIScreen.main.bounds

		window = UIWindow(frame: windowRect)
		rootViewController = UINavigationController()
		appCoordinator = AppCoordinator(with: rootViewController, storage: storage)

		appCoordinator.start()

		window!.rootViewController = rootViewController
		window!.makeKeyAndVisible()
	}
}

