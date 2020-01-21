//
//  ProfileVC.swift
//  ShopAround
//
//  Created by Sahil Arora on 2019-09-30.
//  Copyright © 2019 Sahil Arora. All rights reserved.
//

import UIKit

class ProfileVC: UIViewController {

    @IBOutlet weak var imageView_ProfilePicture: UIImageView!
    @IBOutlet weak var lbl_profileName: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

   
    }
    

    @IBAction func action_GoToCalendar(_ sender: UIButton) {
        self.performSegue(withIdentifier: "ProfileToCalendar", sender: self)
    }

    
    
   
}
