//
//  Data+ObjectMapper.swift
//  WebserviceExample
//
//  Created by Greyson Wright on 6/22/16.
//  Copyright © 2016 Greyson Wright. All rights reserved.
//

import UIKit

extension Data {
	func fromJSON<T: Mappable>(to object: T) -> T? {
		let dataString = String(data: self, encoding: String.Encoding.utf8)
		guard let object = Mapper<T>().map(dataString) else {
			print("Could not map object")
			return nil
		}
		return object
	}
	
	func fromJSON<T: Mappable>(to array: [T]) -> [T]? {
		let dataString = String(data: self, encoding: String.Encoding.utf8)
		guard let array = Mapper<T>().mapArray(dataString) else {
			print("Could not map object")
			return nil
		}
		return array
	}
	
	func fromJSON<T: Mappable>(to dictionary: [String: T]) -> [String: T]? {
		let dataString = String(data: self, encoding: String.Encoding.utf8)
		guard let dictionary = Mapper<T>().mapDictionary(dataString) else {
			print("Could not map object")
			return nil
		}
		return dictionary
	}
}
