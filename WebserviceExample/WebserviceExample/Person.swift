//
//  Person.swift
//  WebserviceExample
//
//  Created by Greyson Wright on 6/24/16.
//  Copyright © 2016 Greyson Wright. All rights reserved.
//

import UIKit

class Person: Mapping {
	var name: String?
	var age: Int?
	var choices: [String]?
	
	init(data: Data) {
		super.init()
		
		self.data = data
		name = map(object: "name")
		age = map(object: "age")
		choices = map(array: "choices")
	}
}
