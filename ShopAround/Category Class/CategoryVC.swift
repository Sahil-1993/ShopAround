//
//  CategoryVC.swift
//  ShopAround
//
//  Created by Sahil Arora on 2019-09-29.
//  Copyright © 2019 Sahil Arora. All rights reserved.
//

import UIKit

class CategoryVC: UIViewController {

    @IBOutlet weak var tblView_Category: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tblView_Category.tableFooterView = UIView()
        // Do any additional setup after loading the view.
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
extension  CategoryVC:UITableViewDelegate,UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell =  tableView.dequeueReusableCell(withIdentifier: "CategoryCell")
        return cell!
    }
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        
        let transformation = CATransform3DTranslate(CATransform3DIdentity, 500, 10, 0)
        cell.layer.transform = transformation
        UIView.animate(withDuration: 1.0, animations: {
            
            
            cell.layer.transform = CATransform3DIdentity
            
        })
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        self.performSegue(withIdentifier: "CategoryToProfile", sender: self)
    }
}
