//
//  JSONMap.Swift
//  WebserviceExample
//
//  Created by Greyson Wright on 6/24/16.
//  Copyright © 2016 Greyson Wright. All rights reserved.
//

import UIKit

class JSONMap {
	var data: Data!

	init(data: Data) {
		self.data = data
	}
	
	func map<T>(object: String) -> T? {
		guard let data = self.data else {
			print("Data was nil.")
			return nil
		}
		do {
			let json = try JSONSerialization.jsonObject(with: data, options: JSONSerialization.ReadingOptions.mutableContainers)
			guard let jsonDict = json[0] as? [String: AnyObject] else {
				return nil
			}
			let parsedObject: T? = parseObject(with: jsonDict, object: object)
			return parsedObject
		} catch {
			print("Could not parse data")
		}
		return nil
	}
	
	private func parseObject<T>(with jsonDict: [String: AnyObject], object: String) -> T? {
		guard let parsedObject = jsonDict[object] as? T else {
			return nil
		}
		return parsedObject
	}
	
//	func map<T>(object: String) -> T? {
//		guard let data = self.data else {
//			print("Data was nil.")
//			return nil
//		}
//		do {
//			let parser = try JSONSerialization.jsonObject(with: data, options: JSONSerialization.ReadingOptions.mutableContainers)
//			let mirror = Mirror(reflecting: self)
//			if let item = parser[0] as? [String: AnyObject] {
//				if let classObject = item["\(mirror.subjectType)"] as? [String: AnyObject] {
//					if let parsedObject = classObject[object] as? T {
//						return parsedObject
//					}
//				}
//			}
//		} catch {
//			print("Could not parse data")
//		}
//		return nil
//	}
//	
//	func map<T>(array: String) -> [T]? {
//		guard let data = self.data else {
//			print("Data was nil.")
//			return nil
//		}
//		do {
//			let parser = try JSONSerialization.jsonObject(with: data, options: JSONSerialization.ReadingOptions.mutableContainers)
//			let mirror = Mirror(reflecting: self)
//			if let item = parser[0] as? [String: AnyObject] {
//				if let classObject = item["\(mirror.subjectType)"] as? [String: AnyObject] {
//					if let parsedArray = classObject[array] as? [T] {
//						return parsedArray
//					}
//				}
//			}
//		} catch {
//			print("Could not parse data")
//		}
//		return nil
//	}
}
