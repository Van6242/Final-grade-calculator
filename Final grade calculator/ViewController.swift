//
//  ViewController.swift
//  Final grade calculator
//
//  Created by  on 3/16/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var wangrade: UITextField!
    @IBOutlet weak var q1text: UITextField!
    @IBOutlet weak var q2text: UITextField!
    @IBOutlet weak var finalnum: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
    }
    
    func persent() {
        var q1 = Double (q1text.text!) ?? 0
        var q2 = Double (q2text.text!) ?? 0
        var grwan = Double (wangrade.text!) ?? 0
       //Math
        var per = q1 * 0.40 + q2 * 0.40
        var fin = (grwan - per) / 0.20
        finalnum.text = "\(fin)"
        //color of txt box
        if fin >= 100.1 {
            finalnum.backgroundColor = UIColor.red
            
        }
        if fin <= 100 {
            finalnum.backgroundColor = UIColor.green
        }
        
    }
    
    @IBAction func enterbutton(_ sender: Any)
    {
        persent()
    }
    
}

