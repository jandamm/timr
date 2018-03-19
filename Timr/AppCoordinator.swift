//
//  AppCoordinator.swift
//  Timr
//
//  Created by Jan Dammshäuser on 08.01.18.
//  Copyright © 2018 Jan Dammshäuser. All rights reserved.
//

import JDCoordinator

class AppCoordinator: JDAppCoordinator {
	let storage: Storage

	init(with navigationController: UINavigationController, storage: Storage) {
		self.storage = storage
		super.init(with: navigationController)
	}
	
	override func start() {
		super.start()
		
		let viewController = UIViewController()
		pushViewController(viewController)
	}
}
