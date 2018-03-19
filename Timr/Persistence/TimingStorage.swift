//
//  TimingStorage.swift
//  Timr
//
//  Created by Jan Dammshäuser on 14.01.18.
//  Copyright © 2018 Jan Dammshäuser. All rights reserved.
//

import Foundation

protocol Storage: class {}

class TimingStorage: Storage {
	let webService: WebService
	private(set) var timings: [Timing] = []

	init(webService: WebService) {
		self.webService = webService
	}
}
