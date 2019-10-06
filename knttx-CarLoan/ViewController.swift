//
//  ViewController.swift
//  knttx-CarLoan
//
//  Created by Visarut Tippun on 22/9/2562 BE.
//  Copyright © 2562 knttx. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var inputA: UITextField!
    
    @IBOutlet weak var inputB: UITextField!
    
    @IBOutlet weak var inputC: UITextField!
    
    @IBOutlet weak var inputD: UITextField!
      
    
    @IBOutlet weak var printX: UILabel!
    
    @IBOutlet weak var printY: UILabel!
    
    @IBOutlet weak var printZ: UILabel!
    
    @IBOutlet weak var printQ: UILabel!
    
    
    @IBOutlet weak var printR: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }


    @IBAction func submitBtn(_ sender: Any) {
        let A: String? = String(inputA.text!)
        var A1 = 0.00
        let B: String? = String(inputB.text!)
        var B1 = 0.00
        let C: String? = String(inputC.text!)
        var C1 = 1.00
        let D: String? = String(inputD.text!)
        var D1 = 0.00
        
        if A!.count > 0 {
            A1 = Double(A!)!
        }
        if B!.count > 0 {
            B1 = Double(B!)!
        }
        if C!.count > 0 {
            C1 = Double(C!)!
        }
        if D!.count > 0 {
            D1 = Double(D!)!
        }
        
       
        //ยอดจัด
        let KK1 = A1 - B1
        
        //ค่างวดต่อเดือน
        let KK2 = KK1 / C1
        
        //ดอกเบี้ยต่อเดือน
        let KK3 = KK1 * D1 / 1200

        //ค่างวด+ดอกเบี้ยต่อเดือน
        let KK4 = KK2 + KK3

        //+Vat7%
        let KK5 = KK4 * 1.07

        
        printX.text = "ยอดจัด    \(String(format: "%.2f", KK1))"
        printY.text = "ค่างวดต่อเดือน    \(String(format: "%.2f", KK2))"
        printZ.text = "ดอกเบี้ยต่อเดือน    \(String(format: "%.2f", KK3))"
        printQ.text = "ค่างวด+ดอกเบี้ยต่อเดือน    \(String(format: "%.2f", KK4))"
        printR.text = "+Vat7%    \(String(format: "%.2f", KK5))"
    }
}

