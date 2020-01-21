//
//  HomeVC.swift
//  ShopAround/Users/sahilarora/Desktop/ShopAround/ShopAround/Home/HomeCell.swift
//
//  Created by Sahil Arora on 2019-09-29.
//  Copyright © 2019 Sahil Arora. All rights reserved.
//

import UIKit

class HomeVC: UIViewController {

    @IBOutlet weak var view_ScreenCover: UIView!
    @IBOutlet weak var btn_Profile: UIButton!
    @IBOutlet weak var view_Menu: UIView!
    @IBOutlet weak var imageView_ProfilePic: UIImageView!
    @IBOutlet weak var tblView_Home: UITableView!
    @IBOutlet weak var barbutton_SideBarMenu: UIBarButtonItem!
    var isExpanded:Bool = false
    
    let images: [String] = ["fashion","hair","photo","furniture","makeup","decorator","jewel","tattoo"]
        let category_Array: [String] =
            ["  Fashion Designer","  Hair Dresser","  Photographer"," Furniture Designer"," Makeup-Artist"," Interior Designer"," Jewellary Designer","  Tattoo Designer"]

    override func viewDidLoad() {
        super.viewDidLoad()
        tblView_Home.tableFooterView = UIView()
        let gesture = UITapGestureRecognizer(target: self, action: #selector(hideMenuBar))
        gesture.numberOfTouchesRequired = 1
        
        view_ScreenCover.addGestureRecognizer(gesture)
    
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        
        hideMenuBar()
    }
    
   //MARK: BarButton Action

    @IBAction func action_OpenSideMenu(_ sender: UIBarButtonItem) {
        if !isExpanded
        {
          showMenuBar()
        }
        else
        {
          hideMenuBar()
        }
        
    }
    
    @IBAction func action_Logout(_ sender: UIButton) {
        let mainStoryboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
               
               //identfying navigation controller connected with HomeVC by passing identifier from storyboard
               let viewController = mainStoryboard.instantiateViewController(withIdentifier: "Loginnvc")
               

               self.view.window?.rootViewController = viewController
    }
    
    @IBAction func open_Profile(_ sender: Any) {
    }
    @IBAction func action_OpenMaps(_ sender: Any) {
        hideMenuBar()
        self.performSegue(withIdentifier: "HomeToMaps", sender: self)
    }
    
    
    //MARK: handling menu bar
    @objc func hideMenuBar()
    {
        isExpanded = false
        
        
        
        UIView.animate(withDuration: 0.4, animations: {
            self.view_Menu.alpha = 0.0
            self.view_ScreenCover.alpha = 0.0
            
        })
        
        UIView.animate(withDuration: 0.4, delay: 0, options: .curveEaseInOut, animations: {
            self.view_Menu.transform = CGAffineTransform(translationX: -self.view.frame.size.width, y: 0)
            self.imageView_ProfilePic.transform = CGAffineTransform(translationX: -self.view.frame.size.width, y: 0)
        }, completion: nil)
        
    }
    func showMenuBar()
    {
        isExpanded = true
        UIView.animate(withDuration: 0.4, animations: {
                   self.view_Menu.alpha = 1.0
                   self.view_ScreenCover.alpha = 0.60
            
               })

        UIView.animate(withDuration: 0.4, delay: 0.0, options: .curveEaseInOut, animations: {
            self.view_Menu.transform = .identity
            self.imageView_ProfilePic.transform = .identity
        }, completion: nil)
    }
}
extension  HomeVC:UITableViewDelegate,UITableViewDataSource
{
    // MARK: UITableView Delegate & DataSource Method

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return images.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell =  tableView.dequeueReusableCell(withIdentifier: "HomeCell") as! HomeCell

        cell.imageView_CategoryImage.image = UIImage(named: images[indexPath.row])
        cell.lbl_Category.text = category_Array[indexPath.row]
        
        
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "HomeToCategory", sender: self)
    }
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        //animation 1
        let rotationtransform = CATransform3DTranslate(CATransform3DIdentity, 500, 10, 0)
        cell.layer.transform = rotationtransform
        cell.alpha = 0.5
        UIView.animate(withDuration: 0.75, animations: {
            cell.layer.transform = CATransform3DIdentity
            cell.alpha = 1.0
        })
        
        
    }
}
