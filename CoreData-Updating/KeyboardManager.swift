//
//  KeyboardManager.swift
//  CoreData-Updating
//
//  Created by Matthew Sousa on 2/17/20.
//  Copyright © 2020 Matthew Sousa. All rights reserved.
//

import UIKit

extension ViewController {

   // default action for done button
      @objc func doneButtonAction(sender: UITextField) {
             self.view.endEditing(true)
              print("dismiss keyboard")
             
         }
      
      // Adding a toolbar to top of keyboard to dismiss keyboard with a done button
      func addDoneButton(to textView: UIView, action optionalAction: Selector?) {
          
          let toolbar = UIToolbar(frame: CGRect(origin: .zero, size: .init(width: view.frame.size.width, height: 30)))
          
          let flexSpace = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
          
          var button = UIBarButtonItem()
          let buttonTitle = "Done"
          
          // can add an ibaction
          if let chosenAction = optionalAction {
              button = UIBarButtonItem(title: buttonTitle, style: .done, target: self, action: chosenAction)
          } else {
              button = UIBarButtonItem(title: buttonTitle, style: .done, target: self, action: #selector(doneButtonAction(sender: )))
          }
          
          toolbar.setItems([flexSpace, button], animated: false)
          toolbar.sizeToFit()
          
          // Checking type
          if textView is UITextField {
              let x = textView as! UITextField
              x.inputAccessoryView = toolbar
          } else if textView is UITextView {
              let y = textView as! UITextView
              y.inputAccessoryView = toolbar
          }
          
          
      }

}
