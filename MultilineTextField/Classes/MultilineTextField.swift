//
//  MultilineTextField.swift
//  MultilineTextField
//
//  Created by Reynaldo Aguilar on 10/11/17.
//

import Foundation
import UIKit

public class MultilineTextField: UITextView, UITextViewDelegate {
   private let placeholderView: UITextView
   
   public override var text: String! {
      didSet {
         self.textViewDidChange(self)
      }
   }
   
   public override var attributedText: NSAttributedString! {
      didSet {
         self.textViewDidChange(self)
      }
   }
   
   
   /// The string that is displayed when there is no other text in the text field.
   /// This value is nil by default. The placeholder string is drawn using the color
   /// stored in `self.placeholderColor`.
   public var placeholder: String? {
      didSet {
         placeholderView.text = placeholder
      }
   }
   
   public var placeholderColor: UIColor = .black {
      didSet {
         placeholderView.textColor = placeholderColor
      }
   }
   
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
            self.placeholderView.textContainer.exclusionPaths = self.textContainer.exclusionPaths
         }
      }
   }
   
   public override init(frame: CGRect, textContainer: NSTextContainer?) {
      placeholderView = UITextView(frame: frame, textContainer: textContainer)
      super.init(frame: frame, textContainer: textContainer)
      initializeUI()
   }
   
   public required init?(coder aDecoder: NSCoder) {
      // FIXME: What happens with the stored placeholder?
      placeholderView = UITextView(coder: aDecoder) ?? UITextView()
      super.init(coder: aDecoder)
      initializeUI()

   }
   
   func initializeUI() {
      self.delegate = self
      
      self.insertSubview(placeholderView, at: 0)
      
      placeholderView.frame = self.bounds
      placeholderView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
   
      placeholderView.text = ""
      placeholderView.isEditable = false
      placeholderView.textColor = UIColor(white: 0.7, alpha: 1)
      
      textViewDidChange(self)
   }
   
   public func textViewDidChange(_ textView: UITextView) {
       placeholderView.isHidden = !textView.text.isEmpty
         || !textView.attributedText.string.isEmpty
   }
}
