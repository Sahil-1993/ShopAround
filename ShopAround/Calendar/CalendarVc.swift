//
//  CalendarVc.swift
//  ShopAround
//
//  Created by Sahil Arora on 2019-09-30.
//  Copyright © 2019 Sahil Arora. All rights reserved.
//

import UIKit


class CalendarVc: UIViewController, FSCalendarDelegate {

    @IBOutlet weak var View_Calender: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
    
        // Do any additional setup after loading the view.
       
    }
    
    func calendar(_ calendar: FSCalendar, didSelect date: Date, at monthPosition: FSCalendarMonthPosition) {
        print("date selected")
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
