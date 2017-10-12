//
//  ViewController.swift
//  MultilineTextField
//
//  Created by rlaguilar on 10/11/2017.
//  Copyright (c) 2017 rlaguilar. All rights reserved.
//

import UIKit
import MultilineTextField

class ViewController: UIViewController {
   @IBOutlet weak var textField: MultilineTextField!
   
   override func viewDidLoad() {
      super.viewDidLoad()
   
      textField.leftView = UIImageView(image: #imageLiteral(resourceName: "fire-truck"))
      // below are properties that can be optionally customized
      textField.placeholder = "This is my placeholder"
      textField.placeholderColor = UIColor(white: 0.7, alpha: 1)
      textField.isPlaceholderScrollEnabled = true
      textField.leftViewOrigin = CGPoint(x: 8, y: 8)
      
      let tap = UITapGestureRecognizer(target: self, action: #selector(handleKeyboard(_:)))
      self.view.addGestureRecognizer(tap)
   }
   
   @objc func handleKeyboard(_ gesture: UITapGestureRecognizer) {
      let location = gesture.location(in: textField)
      
      if !textField.bounds.contains(location) {
         view.endEditing(true)
      }
   }
}

