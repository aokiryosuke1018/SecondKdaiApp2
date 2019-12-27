//
//  ResultViewController.swift
//  SecondKadaiApp2
//
//  Created by 青木亮祐 on 2019/12/27.
//  Copyright © 2019 ryosuke.aoki. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    // 名前だけのための箱を作っておく
    var yourName = "太郎"

    @IBOutlet weak var sentence: UILabel!
    
        override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        // 文を表示（文の中にyourNameに格納されている名前を表示）
            if yourName == "" {
                sentence.text = "名前を入力してくださいね！"
            }else{
            sentence.text = "こんにちは、\(yourName)さん"
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
