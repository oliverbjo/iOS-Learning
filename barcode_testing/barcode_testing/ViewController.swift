//
//  ViewController.swift
//  barcode_testing
//
//  Created by Space Shuttle on 8/4/19.
//  Copyright © 2019 Oliver Bjorkman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var a: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        let stored = UserDefaults.standard.string(forKey: "a")

        if stored != nil {
            barcodeOutlet.image = UIImage(barcode: stored!)
        }
    }
    
    @IBOutlet weak var barcodeOutlet: UIImageView!

    @IBOutlet weak var errorLabelOutlet: UILabel!
    
    
    
    @IBOutlet weak var studentIDOutleta: UITextField!
    
    @IBAction func generateBarcodeAction(_ sender: Any) {
        
        a = studentIDOutleta.text
        if a == "" {
            errorLabelOutlet.text = "Please enter your student ID Number"
        }
        
        let barcode = UIImage(barcode: studentIDOutleta.text!)
        barcodeOutlet.image = barcode
        
    }
    
    @IBAction func shareImageAction(_ sender: Any) {
        let userDefaults = UserDefaults.standard
        UserDefaults.standard.set(a, forKey: "a")
        
    }
    
}

extension UIImage {
    
    convenience init?(barcode: String) {
        let data = barcode.data(using: .ascii)
        guard let filter = CIFilter(name: "CICode128BarcodeGenerator") else {
            return nil
        }
        filter.setValue(data, forKey: "inputMessage")
        guard let ciImage = filter.outputImage else {
            return nil
        }
        self.init(ciImage: ciImage)
    }
    
}

