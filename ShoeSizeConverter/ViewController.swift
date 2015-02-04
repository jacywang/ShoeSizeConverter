//
//  ViewController.swift
//  ShoeSizeConverter
//
//  Created by JIAN WANG on 2/3/15.
//  Copyright (c) 2015 JACY WANG. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var menShoeSizeTextField: UITextField!
    @IBOutlet weak var mensConvertedShoeSizeLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertButtonPressed(sender: UIButton) {
        
        let sizeFromTextField = menShoeSizeTextField.text
        let numberFromTextField = sizeFromTextField.toInt()
        var integerFromTextField = numberFromTextField!
        
        let conversionConstant = 30
        integerFromTextField += conversionConstant
        
        mensConvertedShoeSizeLabel.hidden = false
        let stringWithConvertedShoeSize = "\(integerFromTextField)"
        mensConvertedShoeSizeLabel.text = stringWithConvertedShoeSize
    }

}

