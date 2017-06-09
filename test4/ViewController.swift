//
//  ViewController.swift
//  test4
//
//  Created by nanako on 2017/05/30.
//  Copyright © 2017年 com.litech. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    let fruits = ["月曜1限","月曜2限","月曜3限","月曜4限","月曜5限","月曜6限",
        "火曜1限","火曜2限","火曜3限","火曜4限","火曜5限","火曜6限",
                     "水曜1限","水曜2限","水曜3限","水曜4限","水曜5限","水曜6限","木曜1限","木曜2限","木曜3限","木曜4限","木曜5限","木曜6限","金曜1限","金曜2限","金曜3限","金曜4限","金曜5限","金曜6限"]
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /// セルの個数を指定するデリゲートメソッド（必須）
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fruits.count
    }
    
    /// セルに値を設定するデータソースメソッド（必須）
    internal func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // セルを取得する
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath as IndexPath)
        
        // セルに表示する値を設定する
        
        cell.textLabel!.text = fruits[indexPath.row]
        
        return cell
    }
    
    /// セルが選択された時に呼ばれるデリゲートメソッド
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("セル番号：\(indexPath.row) セルの内容：\(fruits[indexPath.row])")
        
        
        let targetViewController = self.storyboard!.instantiateViewController( withIdentifier: "target" ) 
        self.present( targetViewController, animated: true, completion: nil)
        
        
    }
    
}
