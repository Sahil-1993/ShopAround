//
//  SignUpVC.swift
//  ShopAround
//
//  Created by Sahil Arora on 2019-09-29.
//  Copyright © 2019 Sahil Arora. All rights reserved.
//

import UIKit


class SignUpVC: UIViewController {
    @IBOutlet weak var tableview_CountryCode:UITableView!
@IBOutlet weak var textfield_NewPasword: UITextField!
    @IBOutlet weak var textfield_ConfirmPasword: UITextField!
    @IBOutlet weak var txtfield_EmailAddress: UITextField!
    @IBOutlet weak var txtfield_Phone: UITextField!
    @IBOutlet weak var btn_CountryCode: UIButton!
    @IBOutlet weak var txtfield_LastNAme: UITextField!
    @IBOutlet weak var txtfield_Firstname: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func action_SelectCountryCode(_ sender: UIButton) {
        
     
        
    }
    @IBAction func action_Signup(_ sender: UIButton) {
        
    
        if txtfield_Firstname.text != ""
        {
            
        }
        else
        {
            
        }
        
        
    }
    


}
extension SignUpVC:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "codecell")
        return cell!
    }
    
    

}
