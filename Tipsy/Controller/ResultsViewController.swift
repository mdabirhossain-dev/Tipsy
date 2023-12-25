//
// 
// FileName: ResultsViewController.swift
// ProjectName: Tipsy
//
// Created by MD ABIR HOSSAIN on 23-12-2023 at 1:45 AM
// Website: https://mdabirhossain.com/
//


import UIKit

class ResultsViewController: UIViewController {

    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settingsLabel: UILabel!
    
    var totalPerPerson = 0.0
    var totalPerson = 0
    var tipPercentage = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        
        totalLabel.text = "\(totalPerPerson)"
        settingsLabel.text = "Split between \(totalPerson) people, with \(tipPercentage)% tip."
        
        print(totalPerPerson)
        print(totalPerson)
        print(tipPercentage)
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
