//
// 
// FileName: TipsyBrain.swift
// ProjectName: Tipsy
//
// Created by MD ABIR HOSSAIN on 23-12-2023 at 11:00 AM
// Website: https://mdabirhossain.com/
//


import Foundation

struct TipsyBrain {
    
    var tips: Tips?
    
    mutating func calculateTips(bill: String, tipsPercentage: String, totalPerson: Int) {
        
        let totalBill = Double(bill) ?? 0.0
//        let tipsPct = Double(tipsPercentage.dropLast(1)) ?? 0.0
//        let totalPerPerson = totalBill + (totalBill * Double(tipsPct) / 100)
        
        tips = Tips(totalBill: bill, tipsPct: tipsPercentage, numberOfPeople: totalPerson)
    }
    
    func getTotalPersonTips() -> Double {
        if tips?.totalBill != nil {
            let totalBill = Double(tips?.totalBill ?? "0.00") ?? 0.0
            let tipsPct = Double(getTipsPercentage())
            let perPersonTips = (totalBill + (totalBill * (tipsPct / 100))) / Double(getNumberOfPeople())
            return round(perPersonTips * 100) / 100.0
        } else {
            return 0.0
        }
    }
    
    func getTipsPercentage() -> Int {
        let tipsPct = Int(tips?.tipsPct.dropLast() ?? "0") ?? 0
        return tipsPct
    }
    
    func getNumberOfPeople() -> Int {
        let numberOfPeople = tips?.numberOfPeople ?? 0
        return numberOfPeople
    }
}
