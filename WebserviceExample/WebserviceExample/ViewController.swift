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
		
		DataSingleton.shared.getHiveWords { (test: Test?) in
			print("date - \(test!.date!)")
			print("hits - \(test!.hits!)")
			print("score - \(test!.score!)")
			print("misses - \(test!.misses!)")
		}
		
		DataSingleton.shared.getArrests { (otherTests: [OtherTest]?) in
			for stuff in otherTests! {
				print(stuff.FirstName)
			}
		}
		
		let string = "[{\"Person\": {\"name\": \"Dani\",\"age\": 24,\"choices\": [\"sample string 1\",\"sample string 2\",\"sample string 3\"]}}]"
		let stringData = string.data(using: String.Encoding.utf8)
		let person = Person(data: stringData!)
		print("name -- \(person.name!) age -- \(person.age!) choices -- \(person.choices!)")
	}
	
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
}
