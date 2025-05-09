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
      let convert: PBConvert? = PBConvert(pbDescPath: path)
      if convert != nil {
        let object = ["contextId": "123", "userId": "456"]
        let data = convert!.encode(object, messageType: "basic.v1.RequestPacket")
        print("convert.encode result: ", data)
        let message = convert!.decode(data, messageType: "basic.v1.RequestPacket", useCamelcase: true)
        print("convert.decode result: ", message)
        let defaultMsg = convert!.create("basic.v1.RequestPacket", useCamelcase: true)
        print("convert.create result: ", defaultMsg)
      }
    }
  }


}

