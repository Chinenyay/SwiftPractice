//
//  BankingApp.swift
//  SwiftPractice
//
//  Created by Jennifer Umoke on 21/01/2023.
//

import Foundation
// Creating a banking app using Swift Objects and Classes
// Bank of Jennifer App

// Step 1: Create a bank account class
class BankAccount {
    var customerName: String = ""
    var currentBalance: Float = 0
    var currency = "USD"
    
    init(customerName: String, initialDeposit: Float, currency: String) {
        self.currentBalance = initialDeposit
        self.customerName = customerName
        self.currency = currency
    }
    
    func withdraw(amount: Float) {
        self.currentBalance = self.currentBalance - amount
    }
    func deposit(amount: Float) {
        self.currentBalance = self.currentBalance + amount
    }
}


// sub-classing
// creating a Plus bank account

class PlusAccount: BankAccount {
    var minimumBalance: Float = 100
    var loanBalance: Float
    
    init(customerName: String, initialDeposit: Float, currency: String, loanBalance: Float) {
        self.minimumBalance = initialDeposit
        self.loanBalance = loanBalance
        super.init(customerName: customerName, initialDeposit: initialDeposit, currency: currency)
    }
    
    func addToLoanBalance(amount: Float) {
        self.loanBalance = self.loanBalance + amount
    }
    func deductFromLoanBalance(amount: Float) {
        self.loanBalance = self.loanBalance + amount
    }
    
}

