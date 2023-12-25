//
//
// FileName: ViewController.swift
// ProjectName: Tipsy
//
// Created by MD ABIR HOSSAIN on 23-12-2023 at 7:57 AM
// Website: https://mdabirhossain.com/
//

import UIKit

class CalculatorViewController: UIViewController {
    
    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!
    
    var tipsyBrain = TipsyBrain()
    
    var tip = "10%"
    var numberOfPeople = 2
    var billTotal = 0.0
    var finalResult = 0.0
    
    @IBAction func tipChanged(_ sender: UIButton) {
        // Dismiss keyboard
        billTextField.endEditing(true)
        
        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false
        sender.isSelected = true
        
        tip = sender.currentTitle!
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        splitNumberLabel.text = String(format: "%0.0f", sender.value)
        numberOfPeople = Int(sender.value)
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let bill = billTextField.text!
        
        tipsyBrain.tips = Tips(totalBill: bill, tipsPct: tip, numberOfPeople: numberOfPeople)
        
        performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let resultVC = segue.destination as! ResultsViewController
            resultVC.totalPerPerson = tipsyBrain.getTotalPersonTips()
            resultVC.totalPerson = tipsyBrain.getNumberOfPeople()
            resultVC.tipPercentage = tipsyBrain.getTipsPercentage()
        }
    }
}

