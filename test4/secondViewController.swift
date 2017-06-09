//
//  secondViewController.swift
//  test4
//
//  Created by nanako on 2017/06/02.
//  Copyright © 2017年 com.litech. All rights reserved.
//

import UIKit

class secondViewController: UIViewController,UITextFieldDelegate, UITableViewDataSource, UITableViewDelegate{
    
    @IBOutlet var AttendLabel : UILabel!
    @IBOutlet var AbsentLabel: UILabel!
    
    var attend : Int = 0
    var absent : Int = 0
    
    let userDefaults = UserDefaults.standard
    
    var attendArray: [Int] = []
    var absentArray: [Int] = []
    
    @IBOutlet weak var tableView: UITableView!
    
    // 7. SecondViewに渡す文字列
    var selectedText: String?

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
               
    }
    
    // 電話番号
    //let tel = "000-0000-0000"
    
    // 保存
    //UserDefaults.standard.set(tel, forKey: Constants.telKey)
    
    // 読み込み
    //UserDefaults.standard.string(forKey: Constants.telKey)
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
