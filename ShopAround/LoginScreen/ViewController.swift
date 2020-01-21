//
//  ViewController.swift
//  ShopAround
//
//  Created by Sahil Arora on 2019-09-29.
//  Copyright © 2019 Sahil Arora. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {

    //MARK: Properties
    @IBOutlet weak var scollBar: UIScrollView!
    @IBOutlet weak var viewOverScrollBar: UIView!
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var lbl_ShopAround: UILabel!
    @IBOutlet weak var txtfield_UserName: UITextField!
    
    @IBOutlet weak var txtField_Password: UITextField!
    @IBOutlet weak var btn_ForgotPassword: UIButton!
    @IBOutlet weak var btn_Login: UIButton!
    @IBOutlet weak var btn_SignUp: UIButton!
    
    var ref: DatabaseReference!

    
    
    //MARK: Init
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        txtField_Password.delegate = self
        txtfield_UserName.delegate = self
        //scollBar.contentSize = CGSize(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height+400)
    
        ref = Database.database().reference()
        
    }
//MARK: UIButton Actions
    
    @IBAction func action_ForgotPassword(_ sender: UIButton) {
        
        self.performSegue(withIdentifier: "LoginToForgotPassword", sender: self)
    }
    
    @IBAction func action_Login(_ sender: UIButton) {
        
        
        //self.ref.child("user").childByAutoId().setValue(["username:\(txtfield_UserName.text!)","password:\(txtField_Password.text!)"])
        
        //setting HomeVc as rootviewcontroller
         let mainStoryboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)

        //identfying navigation controller connected with HomeVC by passing identifier from storyboard
        let viewController = mainStoryboard.instantiateViewController(withIdentifier: "homenvc")
        

       self.view.window?.rootViewController = viewController
       // self.performSegue(withIdentifier: "LoginToHome", sender: self)
    }
    
    @IBAction func action_SignUp(_ sender: UIButton) {
        self.performSegue(withIdentifier: "LoginToSignUp", sender: self)
    }
    
}

extension ViewController:UITextFieldDelegate{
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        
    }
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        print(textField.text)
        return true
    }
}
