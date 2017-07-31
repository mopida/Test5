//
//  secondViewController.swift
//  test4
//
//  Created by nanako on 2017/06/02.
//  Copyright © 2017年 com.litech. All rights reserved.
//

import UIKit

class secondViewController: UIViewController, UITextViewDelegate, UITextFieldDelegate{
    
    @IBOutlet var AttendLabel : UILabel!
    @IBOutlet var AbsentLabel: UILabel!
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var textField: UITextField!
    
    var attend : Int = 0
    var absent : Int = 0
    
    let userDefaults = UserDefaults.standard
    
    var attendArray: [Int] = []
    var absentArray: [Int] = []
    var memoArray: [String] = []
    var titleArray: [String] = []
    
    let defaultAttendArray = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
    let defaultAbsentArray = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
    let defaultMemoArray = ["","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]
    let defaultTitleArray = ["月曜1限","月曜2限","月曜3限","月曜4限","月曜5限","月曜6限",
                             "火曜1限","火曜2限","火曜3限","火曜4限","火曜5限","火曜6限",
                             "水曜1限","水曜2限","水曜3限","水曜4限","水曜5限","水曜6限","木曜1限","木曜2限","木曜3限","木曜4限","木曜5限","木曜6限","金曜1限","金曜2限","金曜3限","金曜4限","金曜5限","金曜6限"]
    
    var secondIndex = 0

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    @IBAction func Attendance(){
        attend = attend + 1
        AttendLabel.text = String(attend)
        attendArray[secondIndex] = attend
        userDefaults.set(attendArray, forKey: "attend")
    }
    @IBAction func Absence(){
        absent = absent + 1
        AbsentLabel.text = String(absent)
        absentArray[secondIndex] = absent
        userDefaults.set(absentArray, forKey: "absent")
    }
    @IBAction func back(){
        memoArray[secondIndex] = textView.text
        userDefaults.set(memoArray, forKey: "memo")
        titleArray[secondIndex] = textField.text!
        userDefaults.set(titleArray, forKey: "title")
        dismiss(animated: true, completion: nil)
    }
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        attendArray = userDefaults.array(forKey: "attend") as? [Int] ?? defaultAttendArray
        absentArray = userDefaults.array(forKey: "absent") as? [Int] ?? defaultAbsentArray
        memoArray = userDefaults.array(forKey: "memo") as? [String] ??
        defaultMemoArray
        titleArray = userDefaults.array(forKey: "title") as? [String] ??
        defaultTitleArray
        
        attend = attendArray[secondIndex]
        absent = absentArray[secondIndex]
        
        AttendLabel.text = String(attendArray[secondIndex])
        AbsentLabel.text = String(absentArray[secondIndex])
        textView.text = String(memoArray[secondIndex])
        textField.text = String(titleArray[secondIndex])
        
        //ビューを作成する。
        let testView = UIView()
        testView.frame.size.height = 60
        testView.backgroundColor = UIColor.lightGray
        //「閉じるボタン」を作成する。
       
        
        
    //ビューに「閉じるボタン」を追加する。
        let closeButton = UIButton(frame: CGRect(x: UIScreen.main.bounds.size.width - 70 , y: 0, width: 70, height: 50))
        closeButton.setTitle("閉じる", for: UIControlState.normal)
        closeButton.backgroundColor = UIColor.orange
        closeButton.addTarget(self, action: #selector(onClickCloseButton(sender:)), for: .touchUpInside)
        
         testView.addSubview(closeButton)
        
        //キーボードのアクセサリにビューを設定する。
        textView.inputAccessoryView = testView
        
        //テキストビューのデリゲート先にこのインスタンスを設定する。
        textView.delegate = self
    }
    
    //「閉じるボタン」で呼び出されるメソッド
    func onClickCloseButton(sender: UIButton) {
        //キーボードを閉じる
        textView.resignFirstResponder()
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
