//
//  ViewController.swift
//  My Calculate
//
//  Created by Student06 on 6/12/2560 BE.
//  Copyright © 2560 SNRU. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //ประกาศตัวแปร (Implicit)
    // Integer
    var intNum1 = 0
    var intNum2: Int = 0
    var intAnswer : Int = 0
    // String
    var strNum1 = " "
    var strNum2: String = " "
    var strAnswer : String = " "
    
    //Initial View to Outlet
    //TextFiald1
    @IBOutlet weak var Num1TextFieid: UITextField!
    
    //TextFiald2
    @IBOutlet weak var Num2TextField: UITextField!

    
    // ปุ่มกด Button
    @IBAction func AnswerButton(_ sender: Any) {
        
        strNum1 = Num1TextFieid.text!
        strNum2 = Num2TextField.text!
        
        //Show Log
        print("strNum1 ==> \(strNum1)")
        print("strNum2 ==> \(strNum2)")
        
        //Change DataType
        intNum1 = Int(strNum1)!
        intNum2 = Int(strNum2)!
        print("intNum ==> \(intNum1)")
        print("intNum ==> \(intNum2)")
        
        intAnswer = intNum1 + intNum2
        print("intAnswer \(intAnswer)")
        
        //Change int to String
        strAnswer = String(intAnswer)
        
        //แสดงผลบน Lable
        ShowAnswer.text = strAnswer
        
    }//AnswerButton
    
    
    @IBOutlet weak var ShowAnswer: UILabel!
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }//==>เมทธอทหลักที่ทำงานเป็นอันดับแรก

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}//main class

