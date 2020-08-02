//
//  SettingsViewController.swift
//  Time2Tip3
//
//  Created by Shreyas Pant on 8/1/20.
//  Copyright © 2020 Codepath. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var settingsTipControl: UISegmentedControl!
    let defaultTipPercentages = [0.10, 0.15, 0.2]
    let defaults = UserDefaults.standard
    @IBAction func setDefaultTip(_ sender: Any) {

        if (defaultTipPercentages[settingsTipControl.selectedSegmentIndex] == 0) {
            defaults.set(0, forKey: "index")
           defaults.synchronize()
            
        }
        
        else  if (defaultTipPercentages[settingsTipControl.selectedSegmentIndex] == 1) {
            defaults.set(1, forKey: "index")
            defaults.synchronize()
        }
        
        else {
            defaults.set(2, forKey: "index")
            defaults.synchronize()
        }
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
