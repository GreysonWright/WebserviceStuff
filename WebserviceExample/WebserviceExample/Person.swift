//
//  Person.swift
//  WebserviceExample
//
//  Created by Greyson Wright on 6/24/16.
//  Copyright © 2016 Greyson Wright. All rights reserved.
//

import UIKit

class Person: JSONMap {
	var name: String?
	var age: Int?
	var friend: Person?
	
	override init(data: Data) {
		super.init(data: data)
		
		name = map(object: "name")
		age = map(object: "age")
//		friend = map(object: "friend")
//		choices = map(array: "choices")
	}
}
