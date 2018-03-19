//
//  Timing.swift
//  Timr
//
//  Created by Jan Dammshäuser on 14.01.18.
//  Copyright © 2018 Jan Dammshäuser. All rights reserved.
//

import Foundation

struct Timing: Codable {
	let name: String
	private let intervals: [Interval]

	struct Interval: Codable {
		let duration: TimeInterval
	}
}
