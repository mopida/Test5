//
//  secondViewController.swift
//  test4
//
//  Created by nanako on 2017/06/02.
//  Copyright © 2017年 com.litech. All rights reserved.
//

import UIKit

class secondViewController: UIViewController,UITextFieldDelegate{
    
    @IBOutlet var AttendLabel : UILabel!
    @IBOutlet var AbsentLabel: UILabel!
    
    var attend : Int = 0
    var absent : Int = 0
    
     let userDefaults = UserDefaults.standard
    
            override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
            
             }
    @IBAction func Attendance(){
        attend = attend + 1
        AttendLabel.text = String(attend)
    }
    @IBAction func Absence(){
        absent = absent + 1
        AbsentLabel.text = String(absent)
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //String型配列のデータを保存、読込
        userDefaults.set([attend], forKey: "testStringArray")
        let result6 = userDefaults.stringArray(forKey: "testStringArray")
        
        print("fluits:\(result6!)")
        
    }
   

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
