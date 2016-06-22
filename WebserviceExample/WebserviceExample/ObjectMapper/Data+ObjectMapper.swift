//
//  Data+ObjectMapper.swift
//  WebserviceExample
//
//  Created by Greyson Wright on 6/22/16.
//  Copyright © 2016 Greyson Wright. All rights reserved.
//

import UIKit

extension Data {
//	func toObject<T: Mappable>(object: T) -> Mappable? {
//		let dataString = String(data: self, encoding: String.Encoding.utf8)
//		guard let test = Mapper<T>().map(dataString) else {
//			print("Could not map object")
//			return nil
//		}
//		return test
//	}
	
	func toObject<T: Mappable>(object: inout T) {
		let dataString = String(data: self, encoding: String.Encoding.utf8)
		object = Mapper<T>().map(dataString)!
	}
}
