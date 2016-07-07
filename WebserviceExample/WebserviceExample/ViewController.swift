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
		
//		DataSingleton.shared.getHiveWords { (test: Test?) in
//			print("date - \(test!.date!)")
//			print("hits - \(test!.hits!)")
//			print("score - \(test!.score!)")
//			print("misses - \(test!.misses!)")
//		}
//
//		DataSingleton.shared.getArrests { (otherTests: [OtherTest]?) in
//			for stuff in otherTests! {
//				print(stuff.FirstName)
//			}
//		}
		
//		let string = "[{\"name\": \"Dani\",\"age\": 24,\"choices\": [\"sample string 1\",\"sample string 2\",\"sample string 3\"]}]"
//		let stringData = string.data(using: String.Encoding.utf8)
//		let person = Person(data: stringData!)
//		print("name -- \(person.name!) age -- \(person.age!) choices -- \(person.choices!)")
		
		let string = "[{\"age\": 34,\"name\": \"Lloyd Glover\",\"friend\": {\"age\": 25,\"name\": \"Campbell Kirk\",\"friend\": {}}}]"
//		let string = "{\"name\" : \"102 ft\",\"age\" : 31}"
//		let string = "{\"age\": 37,\"name\": \"Doris Rios\",\"friend\": {\"age\": 40,\"name\": \"Acevedo Jefferson\",\"friend\": null}}"
		let stringData = string.data(using: String.Encoding.utf8)
		let person = Person(data: stringData!)
		let mirror = Mirror(reflecting: person.self)
		for child in mirror.children {
			print(child)
		}
	}
	
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
}
