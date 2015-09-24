//
//  KeyboardViewController.swift
//  CalKeyboard
//
//  Created by Gene Yoo on 9/15/15.
//  Copyright © 2015 iOS Decal. All rights reserved.
//

import UIKit

class KeyboardViewController: UIInputViewController {

    @IBOutlet var nextKeyboardButton: UIButton!
    @IBOutlet weak var this_btn: UIButton!
    @IBOutlet weak var is_btn: UIButton!
    @IBOutlet weak var crazy_btn: UIButton!
    
    var keyboardView: UIView!
    

    override func updateViewConstraints() {
        super.updateViewConstraints()
    
        // Add custom view sizing constraints here
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        loadInterface()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated
    }

    override func textWillChange(textInput: UITextInput?) {
        // The app is about to change the document's contents. Perform any preparation here.
    }

    override func textDidChange(textInput: UITextInput?) {
        // The app has just changed the document's contents, the document context has been updated.
    }

    func loadInterface() {
        let keyboardNib = UINib(nibName: "Keyboard", bundle: nil)
        keyboardView = keyboardNib.instantiateWithOwner(self, options: nil)[0] as! UIView
        keyboardView.frame = view.frame
        view.addSubview(keyboardView)
        view.backgroundColor = keyboardView.backgroundColor
        nextKeyboardButton.addTarget(self, action: "advanceToNextInputMode", forControlEvents: .TouchUpInside) // advanceToNextInputMode is already defined in template
        this_btn.addTarget(self, action: "this_input", forControlEvents: .TouchUpInside)
        is_btn.addTarget(self, action: "is_input", forControlEvents: .TouchUpInside)
        crazy_btn.addTarget(self, action: "crazy_input", forControlEvents: .TouchUpInside)
    }
    
    func this_input(){
        var proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("This")
        
    }
    
    func is_input(){
        var proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("Is")
    }
    
    func crazy_input(){
        var proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("Crazy")
    }

}
