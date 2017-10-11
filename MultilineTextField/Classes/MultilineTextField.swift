//
//  MultilineTextField.swift
//  MultilineTextField
//
//  Created by Reynaldo Aguilar on 10/11/17.
//

import Foundation
import UIKit

public class MultilineTextField: UITextView {
   public var leftView: UIView? {
      willSet {
         if let view = self.leftView {
            view.removeFromSuperview()
         }
      }
      didSet {
         if let view = self.leftView {
            self.addSubview(view)
            
            let position = CGPoint(x: 6, y: 6)
            view.frame = CGRect(origin: position, size: view.bounds.size)
            
            let exclusionPath = UIBezierPath(rect: view.frame)
            
            self.textContainer.exclusionPaths = [exclusionPath]
         }
      }
   }
}
