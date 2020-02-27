//
//  SettingsViewController.swift
//  Planets
//
//  Created by Samuel Esserman on 2/27/20.
//  Copyright © 2020 Lambda Inc. All rights reserved.
//

import UIKit
//MARK: - Extension & Static Var
extension String {
    static var shouldShowPlutoKey = "shouldShowPluto"
}
//MARK: - Class & UpdateViews()
class SettingsViewController: UIViewController {
    @IBOutlet weak var shouldShowPlutoSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateViews()

    }
    
    func updateViews() {
        let shouldShowPluto = UserDefaults.standard.bool(forKey: .shouldShowPlutoKey)
        
        shouldShowPlutoSwitch.isOn = shouldShowPluto
        
    }
//MARK: - Actions
    @IBAction func changeShouldShowPluto(_ sender: Any) {
        let shouldShowPluto = shouldShowPlutoSwitch.isOn
        
        UserDefaults.standard.set(shouldShowPluto, forKey: .shouldShowPlutoKey)
    }
    
    @IBAction func done(_ sender: Any) {
         dismiss(animated: true, completion: nil)

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
