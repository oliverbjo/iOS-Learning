//
//  ViewController.swift
//  hello_world
//
//  Created by Space Shuttle on 8/2/19.
//  Copyright © 2019 Oliver Bjorkman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var labelOutlet: UILabel!
    
    @IBOutlet weak var firstNumberOutlet: UITextField!
    
    @IBOutlet weak var secondNumberOutlet: UITextField!
    
    @IBAction func addButtonAction(_ sender: Any) {
        let int1 = Int(firstNumberOutlet.text!)
        let int2 = Int(secondNumberOutlet.text!)
        labelOutlet.text = String(int1! + int2!)
    }
    
    @IBAction func subtractButtonAction(_ sender: Any) {
        let int1 = Int(firstNumberOutlet.text!)
        let int2 = Int(secondNumberOutlet.text!)
        labelOutlet.text = String(int1! - int2!)
    }
    
    @IBAction func multiplyButtonAction(_ sender: Any) {
        let int1 = Int(firstNumberOutlet.text!)
        let int2 = Int(secondNumberOutlet.text!)
        labelOutlet.text = String(int1! * int2!)
    }
    
    @IBAction func divideButtonAction(_ sender: Any) {
        let int1 = Int(firstNumberOutlet.text!)
        let int2 = Int(secondNumberOutlet.text!)
        labelOutlet.text = String(int1! / int2!)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

