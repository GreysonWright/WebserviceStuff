//
//  Test.swift
//  WebserviceExample
//
//  Created by Greyson Wright on 6/22/16.
//  Copyright © 2016 Greyson Wright. All rights reserved.
//

import UIKit

class Test: Mappable {
	
	var date: String?
	var score: Int?
	var hits: Int?
	var misses: Int?
	
	init() {
		
	}
	
	required init?(_ map: Map) {
		
	}
	
	func mapping(_ map: Map) {
		date <- map["date"]
		score <- map["score"]
		hits <- map["hits"]
		misses <- map["misses"]
	}
}
