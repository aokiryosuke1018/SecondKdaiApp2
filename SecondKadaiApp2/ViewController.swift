//
//  ViewController.swift
//  SecondKadaiApp2
//
//  Created by 青木亮祐 on 2019/12/27.
//  Copyright © 2019 ryosuke.aoki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
   // テキストフィールドに入力された文字用に変数を作っておく
   // メンバ変数に他のメンバ変数は入れられないとのこと
    var textFieldString = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func go(_ sender: Any) {
        // textFieldStringに、入力された文字を格納
        // ローカル変数にはメンバ変数を入れることができるとのこと
        textFieldString = textField.text!
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // segueから遷移先のResultViewControllerを取得する
        let resultViewController:ResultViewController = segue.destination as! ResultViewController
        // 遷移先のyourNameに入力された文字を格納
        resultViewController.yourName = textFieldString
    }
    
    
    @IBAction func unwind(_ segue: UIStoryboardSegue) {
    }
}

