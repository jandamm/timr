//
//  AppCoordinator.swift
//  Timr
//
//  Created by Jan Dammshäuser on 08.01.18.
//  Copyright © 2018 Jan Dammshäuser. All rights reserved.
//

import JDCoordinator

class AppCoordinator: JDAppCoordinator {
	
	override func start() {
		super.start()
		
		let viewController = UIViewController()
		pushViewController(viewController)
	}
}
