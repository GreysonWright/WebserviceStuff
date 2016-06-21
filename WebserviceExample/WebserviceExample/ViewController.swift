//
//  ViewController.swift
//  WebserviceExample
//
//  Created by Greyson Wright on 6/20/16.
//  Copyright © 2016 Greyson Wright. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
//		let address = "https://mobileweb.caps.ua.edu/BeePositive/api/Submit/HiveWords"
//		let headers = ["AccessToken" : "38e6f015-66fa-4965-a078-03a1be41e978"]
//		let dataString = "{\"score\": 1,\"hits\": 2,\"misses\": 3}"
//		let data = dataString.data(using: String.Encoding.utf8)
//		URLSession.request(with: address, httpMethod: .post, headers: headers, requestBody: data, response: { (responseData: Data?, statusCode: StatusCode) in
//			if responseData != nil {
//				print(String(data: responseData!, encoding: String.Encoding.utf8))
//			}
//		}) { (error: NSError) in
//			print(error)
//		}
		let dataString = "{\"score\": 9999999999999999,\"hits\": 2,\"misses\": 3}"
		let data = dataString.data(using: String.Encoding.utf8)
		DataSingleton.sharedInstance.submitHiveWords(with: data!) { (responseData: Data?) in
			print(String(data: responseData!, encoding: String.Encoding.utf8))
		}
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
}
