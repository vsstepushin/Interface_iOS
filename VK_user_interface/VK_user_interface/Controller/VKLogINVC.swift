//
//  VKLogINVC.swift
//  VK_user_interface
//
//  Created by Виталий Степушин on 03.12.2020.
//

import UIKit

class VKLogINVC: UIViewController {

    
   
    @IBOutlet weak var logBut: UIButton!
    @IBOutlet weak var passwordLable: UILabel!
    @IBOutlet weak var loginLable: UILabel!
    @IBOutlet weak var imageVK: UIImageView!
    @IBOutlet weak var loginInput: UITextField!
    @IBOutlet weak var passwordInput: UITextField!
    
    @IBAction func logBut(_ sender: Any) {
       
    }
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        guard checkUser() else {
            showAlert()
            return false
        }
        return true
    }
    
    internal func checkUser() -> Bool {
        guard
            let username = loginInput.text,
            let password = passwordInput.text
        else { return false }
        return username == "1" && password == "1"
    }
    
    private func showAlert() {
        let alertController = UIAlertController(
            title: "Error",
            message: "Incorrect username or password",
            preferredStyle: .alert)
        let alertItem = UIAlertAction(
            title: "Ok:(",
            style: .cancel)
        { _ in
            self.loginInput.text = ""
            self.passwordInput.text = ""
        }
        alertController.addAction(alertItem)
        present(alertController,
                animated: true,
                completion: nil)
    }
    @IBOutlet weak var scrollView: UIScrollView!
    @objc func keyboardWasShown(notification: Notification) {
           let info = notification.userInfo! as NSDictionary
           let kbSize = (info.value(forKey: UIResponder.keyboardFrameEndUserInfoKey) as! NSValue).cgRectValue.size
           let contentInsets = UIEdgeInsets(top: 0.0, left: 0.0, bottom: kbSize.height, right: 0.0)
           self.scrollView?.contentInset = contentInsets
           scrollView?.scrollIndicatorInsets = contentInsets
       }
       
       @objc func keyboardWillBeHidden(notification: Notification) {
           let contentInsets = UIEdgeInsets.zero
           scrollView?.contentInset = contentInsets
       }
    
    override func viewWillAppear(_ animated: Bool) {
            super.viewWillAppear(animated)
            NotificationCenter.default.addObserver(self, selector: #selector(self.keyboardWasShown), name: UIResponder.keyboardWillShowNotification, object: nil)
            NotificationCenter.default.addObserver(self, selector: #selector(self.keyboardWillBeHidden(notification:)), name: UIResponder.keyboardWillHideNotification, object: nil)
        navigationController?.navigationBar.isHidden = true
        }
    
    override func viewWillDisappear(_ animated: Bool) {
            super.viewWillDisappear(animated)
            
            NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillShowNotification, object: nil)
            NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillHideNotification, object: nil)
        navigationController?.navigationBar.isHidden = false
        }
    
    @objc func hideKeyboard() {
            self.scrollView?.endEditing(true)
        }
    override func viewDidLoad() {
        super.viewDidLoad()
             
                let hideKeyboardGesture = UITapGestureRecognizer(target: self, action: #selector(hideKeyboard))
                scrollView?.addGestureRecognizer(hideKeyboardGesture)
    }
    

}
