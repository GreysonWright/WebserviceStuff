//
//  BinderWebService.swift
//  WebserviceExample
//
//  Created by Greyson Wright on 6/21/16.
//  Copyright © 2016 Greyson Wright. All rights reserved.
//

import UIKit

class BinderWebService: DataInterface {
	var binderWebServiceBaseAddress : String = "https://mobileweb.caps.ua.edu/BeePositive"
	var accessToken: String? = nil
	
	// MARK: Singleton Access
	static let sharedInstance = BinderWebService()
	
	// Headers
	func binderHeaders() -> [String:String] {
		if accessToken == nil {
			return ["Token" : ""]
		}
		
		return ["Token" : accessToken!]
	}
	
	// MARK: Binder Webservice Methods
	func submitHiveWords(with data: Data, response: (Data?) -> Void) {
		let address = "\(binderWebServiceBaseAddress)/api/Submit/HiveWords"
		
		//Make Request
		let headers = ["AccessToken" : "38e6f015-66fa-4965-a078-03a1be41e978"]
		URLSession.request(with: address, httpMethod: .post, headers: headers, requestBody: data, response: { (responseData: Data?, statusCode: StatusCode) in
			if responseData != nil {
				response(responseData)
			}
		}) { (error: NSError) in
			print(error)
		}
	}
	
	func getHiveWords(response: (Data?) -> Void) {
		let address = "\(binderWebServiceBaseAddress)/api/Request/HiveWords"
		
		//Make Request
		let headers = ["AccessToken" : "38e6f015-66fa-4965-a078-03a1be41e978"]
		URLSession.request(with: address, httpMethod: .get, headers: headers, requestBody: nil, response: { (responseData: Data?, statusCode: StatusCode) in
			if responseData != nil {
				response(responseData)
			}
		}) { (error: NSError) in
			print(error)
		}
	}
}
