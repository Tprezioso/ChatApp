//
//  ViewController.swift
//  Chat App
//
//  Created by Thomas Prezioso on 4/16/18.
//  Copyright © 2018 Thomas Prezioso. All rights reserved.
//

import UIKit
import Firebase

class LoginViewController: UIViewController {
    @IBOutlet var nameField: UITextField!
    // MARK: View Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.blue

    }
    
//    override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(animated)
//        NotificationCenter.default.addObserver(self, selector: #selector(self.keyboardWillShowNotification(_:)), name: NSNotification.Name.UIKeyboardWillShow, object: nil)
//        NotificationCenter.default.addObserver(self, selector: #selector(self.keyboardWillHideNotification(_:)), name: NSNotification.Name.UIKeyboardWillHide, object: nil)
//    }
//    
//    override func viewWillDisappear(_ animated: Bool) {
//        super.viewWillDisappear(animated)
//        NotificationCenter.default.removeObserver(self, name: NSNotification.Name.UIKeyboardWillShow, object: nil)
//        NotificationCenter.default.removeObserver(self, name: NSNotification.Name.UIKeyboardWillHide, object: nil)
//    }


    @IBAction func loginDidTouch(_ sender: Any) {
        
        if nameField?.text != "" { // 1
            Auth.auth().signInAnonymously(completion: { (user, error) in // 2
                if let err = error { // 3
                    print(err.localizedDescription)
                    return
                }
                
                self.performSegue(withIdentifier: "LoginToChat", sender: nil) // 4
            })
        }
    }

//    // MARK: - Notifications
//
//    @objc func keyboardWillShowNotification(_ notification: Notification) {
//        let keyboardEndFrame = ((notification as NSNotification).userInfo![UIKeyboardFrameEndUserInfoKey] as! NSValue).cgRectValue
//        let convertedKeyboardEndFrame = view.convert(keyboardEndFrame, from: view.window)
//        bottomLayoutGuideConstraint.constant = view.bounds.maxY - convertedKeyboardEndFrame.minY
//    }
//
//    @objc func keyboardWillHideNotification(_ notification: Notification) {
//        bottomLayoutGuideConstraint.constant = 48
//    }

}

