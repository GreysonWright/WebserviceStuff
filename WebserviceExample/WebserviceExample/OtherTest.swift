//
//  OtherTest.swift
//  WebserviceExample
//
//  Created by Greyson Wright on 6/22/16.
//  Copyright © 2016 Greyson Wright. All rights reserved.
//

import UIKit

class OtherTest: Mappable {
	var ID: Int?
	var FirstName: String?
	var MiddleName: String?
	var LastName: String?
	var Charge: String?
	var DateBooked: String?
	var BondAmount: Int?

	init() {
		
	}
	
	required init(_ map: Map) {
		
	}

	func mapping(_ map: Map) {
		ID <- map["ID"]
		FirstName <- map["FirstName"]
		MiddleName <- map["MiddleName"]
		LastName <- map["LastName"]
		Charge <- map["Charge"]
		DateBooked <- map["DateBooked"]
		BondAmount <- map["BondAmount"]
	}
}
