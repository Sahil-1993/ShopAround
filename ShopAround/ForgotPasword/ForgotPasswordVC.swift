//
//  ForgotPasswordVC.swift
//  ShopAround
//
//  Created by Sahil Arora on 2019-09-29.
//  Copyright © 2019 Sahil Arora. All rights reserved.
//

import UIKit

class ForgotPasswordVC: UIViewController {

    @IBOutlet weak var constraint_ViewOTPLEading: NSLayoutConstraint!
    @IBOutlet weak var textfield_Otp: UITextField!
    @IBOutlet weak var view_OTP: UIView!
    @IBOutlet weak var view_EnterEmail: UIView!
    @IBOutlet weak var txtField_EmailAddress: UITextField!
    @IBOutlet weak var btn_Next: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    let rotationtransform = CATransform3DTranslate(CATransform3DIdentity, 500, 10, 0)
    self.view_OTP.layer.transform = rotationtransform
    }
 
    @IBAction func action_GoNext(_ sender: UIButton) {
        view_EnterEmail.isHidden = true
        
        UIView.animate(withDuration: 1.0, animations: {
            self.view_OTP.isHidden = false
            self.view_OTP.layer.transform = CATransform3DIdentity
            
        })
  
    }
   
    
    @IBAction func action_GoOTP(_ sender: UIButton) {
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
