//
//  ViewController.swift
//  TipMan
//
//  Created by Laurence Bernardo on 8/24/19.
//  Copyright © 2019 Laurence Bernardo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipAmount: UILabel!
    @IBOutlet weak var totalAmount: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var GifView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func onTap(_ sender: Any) {
        print("Hello")
        view.endEditing(true)
    }
    @IBAction func CalculateTip(_ sender: Any) {
        let bill = Double(billField.text!) ?? 0
        let tipPercentages = [0.1, 0.15, 0.2]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        tipAmount.text = String(format: "$%.2f", tip)
        totalAmount.text = String(format: "$%.2f", total)
        if (tipPercentages[tipControl.selectedSegmentIndex] > 0.15){
            GifView.loadGif(name: "crying")
        }
        else if (tipPercentages[tipControl.selectedSegmentIndex] > 0.1){
            GifView.loadGif(name: "thankful")
        }
        else{
            GifView.loadGif(name: "mad")
        }
    }

}

