//
//  ViewController.swift
//  Testproject
//
//  Created by student on 16.11.2020.
//

import UIKit



class ViewController: UIViewController {

    var  rightSide:Double = 0
    var  leftSide:Double = 0
    var  operation:Int = 0
    var mathSign:Bool = false
    
    @IBOutlet weak var result: UILabel!
    
    
    @IBAction func digits(_ sender: UIButton) {
        if mathSign == true {
            result.text = String(sender.tag)
           mathSign = false
            
        }
        
        else {
            
            result.text = result.text! + String(sender.tag)
            
        }
        
        
        rightSide = Double(result.text!)!
    }
    
   
    @IBAction func buttons(_ sender: UIButton) {
        if result.text != "" && sender.tag != 10 && sender.tag != 15 {
            leftSide = Double(result.text!)!
            
            if sender.tag == 11 {
                result.text = "/";
            }
            if sender.tag == 12 {
                result.text = "x";
            }
            if sender.tag == 13 {
                result.text = "-";
            }
            if sender.tag == 14 {
                result.text = "+";
            }
            if sender.tag == 17 {
                result.text = "%";
            }
            
            
            
            operation = sender.tag
            mathSign = true;
        }
        
        
        
        else if sender.tag == 15 {
            if operation == 11{
                result.text = String(leftSide / rightSide)
                
            }
           else if operation == 12{
                result.text = String(leftSide * rightSide)
            }
            if operation == 13{
                result.text = String(leftSide - rightSide)
            }
            if operation == 14{
                result.text = String(leftSide + rightSide)
            }
            
            if operation == 17{
                result.text = String(leftSide / 100)
            }
            
            
            
            
        }
        else if sender.tag == 10 {
            result.text = ""
            leftSide = 0
            rightSide = 0
            operation = 0
        }
    }
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        
       
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
   
}

