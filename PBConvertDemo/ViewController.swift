//
//  ViewController.swift
//  PBConvertDemo
//
//  Created by jkeyi on 2025/4/25.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    if let path = Bundle.main.path(forResource: "pb", ofType: "desc") {
      let testData:Any = path as Any
      let obj = PBConvert()
      obj.test(testData)
    }
    // Do any additional setup after loading the view.
  }


}

