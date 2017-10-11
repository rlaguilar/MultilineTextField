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
      // Do any additional setup after loading the view, typically from a nib.
      let imageView = UIImageView(image: #imageLiteral(resourceName: "fire-truck"))
//      imageView.bounds = CGRect(x: 0, y: 0, width: 50, height: 60)
//      imageView.backgroundColor = .red
      textField.leftView = imageView
      textField.placeholder = "This is my placeholder"
    
      print("Printing \(textField.subviews.count) views")
      
      textField.subviews.forEach { v in
         print("********")
         print(v)
      }
      
      print("********")
      
   }
   
   override func didReceiveMemoryWarning() {
      super.didReceiveMemoryWarning()
      // Dispose of any resources that can be recreated.
   }
   
}

