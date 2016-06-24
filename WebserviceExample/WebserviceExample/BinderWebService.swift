//
//  BinderWebService.swift
//  WebserviceExample
//
//  Created by Greyson Wright on 6/21/16.
//  Copyright © 2016 Greyson Wright. All rights reserved.
//

import UIKit

class BinderWebService: DataInterface {
	var binderWebServiceBaseAddress : String = "https://mobileweb.caps.ua.edu"
	var accessToken: String? = "38e6f015-66fa-4965-a078-03a1be41e978"
	
	// MARK: Singleton Access
	static let sharedInstance = BinderWebService()
	
	// Headers
	func binderHeaders() -> [String:String] {
		if accessToken == nil {
			return ["AccessToken" : ""]
		}
		
		return ["AccessToken" : accessToken!]
	}
	
	// MARK: Binder Webservice Methods
	func getHiveWords(response: (Test?) -> Void) {
		let address = "\(binderWebServiceBaseAddress)/BeePositive/api/Request/HiveWords"
		
		//Make Request
		URLSession.shared().request(with: address, httpMethod: .get, headers: binderHeaders(), requestBody: nil, response: { (responseData: Data?, statusCode: StatusCode) in
			guard let responseData = responseData else {
				response(nil)
				return
			}
			
			let object = responseData.fromJSON(to: Test().self)
			response(object)
		}) { (error: NSError) in
			print(error)
		}
	}
	
	func getArrests(response: ([OtherTest]?) -> Void) {
		let address = "\(binderWebServiceBaseAddress)/TCSOPublic/api/Arrests/getRecentArrests"
		
		//Make Request
		URLSession.shared().request(with: address, httpMethod: .get, headers: binderHeaders(), requestBody: nil, response: { (responseData: Data?, statusCode: StatusCode) in
			guard let responseData = responseData else {
				response(nil)
				return
			}
			
			let object = responseData.fromJSON(to: [OtherTest().self])
			response(object)
		}) { (error: NSError) in
			print(error)
		}
	}
}
