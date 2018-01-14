//
//  ViewController.swift
//  Dog Years Calc
//
//  Created by Mirko Cukich on 1/13/18.
//  Copyright © 2018 Digital Mirko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var answerLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func ageBtn(_ sender: Any) {
        
        // checking to see if something was added to textfield
        if let age = textField.text {
            
            // checking to see if number was entered
            if let ageAsNumber = Int (age){
                
                // age calculation answer in switch
                var ageCalc = 0
                
                // Dog Years to Human calculation info: www.dogyearschart.com
                // based off medium-sized dog results
                switch ageAsNumber {
                case 1:
                    ageCalc = 15   // 1 dog year = 15 human years
                    break
                case 2:
                    ageCalc = 24   // 2 dog years = 24 human years
                    break
                case 3:
                    ageCalc = 29   // 3 dog years = 29 human years
                    break
                case 4:
                    ageCalc = 34   // 4 dog years = 34 human years
                    break
                case 5:
                    ageCalc = 38   // 5 dog years = 38 human years
                    break
                case 6:
                    ageCalc = 42   // 6 dog years = 42 human years
                    break
                case 7:
                    ageCalc = 47   // 7 dog years = 47 human years
                    break
                case 8:
                    ageCalc = 51   // 8 dog years = 51 human years
                    break
                case 9:
                    ageCalc = 56   // 9 dog years = 56 human years
                    break
                case 10:
                    ageCalc = 60   // 10 dog years = 60 human years
                    break
                case 11:
                    ageCalc = 65   // 11 dog years = 65 human years
                    break
                case 12:
                    ageCalc = 69   // 12 dog years = 69 human years
                    break
                case 13:
                    ageCalc = 74   // 13 dog years = 74 human years
                    break
                case 14:
                    ageCalc = 78   // 14 dog years = 78 human years
                    break
                case 15:
                    ageCalc = 83   // 15 dog years = 83 human years
                    break
                case 16:
                    ageCalc = 87   // 16 dog years = 87 human years
                    break
                case 17:
                    ageCalc = 92   // 17 dog years = 92 human years
                    break
                case 18:
                    ageCalc = 96   // 18 dog years = 96 human years
                    break
                default:
                    ageCalc = 0   // calculator only goes up to 18 dog years
                    break
                }
                
                // printing results on screen label under button
                if ageCalc == 0 {
                    // error message displayed for dog years over 18
                    answerLbl.text = "This calc only works up to 18 dog years"
                    
                } else {
                    // answer displayed from 1 to 18 dog years
                    answerLbl.text = "Your Dog is \(ageCalc) in Human Years"
                }
            }
        }
    }
}

