//
//  main.swift
//  swiftBank
//
//  Created by Mehedee Hassan on 12/19/16.
//  Copyright © 2016 Mehedee Hassan. All rights reserved.
//

import Foundation



//MARK: properites
var Users:[User] = [
    User(username: "mhr" ,password: "mehedee" ,name :"mehedee")!,
    User(username: "jn" ,password: "jarin" ,name :"jarin")!,
    User(username: "mh" ,password: "mustanir" ,name :"mustanir")!
]

var currentUser: User?



//MARK: functions
func enterUserMenu()
{
    
    repeat{
    Utils.clearScreen()
    
    print(">>>>>>> USER MENU:")
    print("1 View Account")
    print("2 Diposit Account")
    print("3 Withdraw amount")
    print("0 Sign out")
    
    
    let response_str = Utils.readInput()
    let response  = Int(response_str) ?? -1
    
    switch response {
        case 1:
            viewAccount()
        case 2:
            dipositMoney()
        case 3:
            withdrawMoney()
        case 0:
            currentUser = nil
        
            return
        default:
            continue
        
        
        }
    }while true

}

func viewAccount(){
    guard
        let currentUser  = currentUser
        else{
            fatalError("currentUser is nil")
    }
    currentUser.outputDetails()
    
    Utils.pause()
    
}


func dipositMoney(){
    guard
        let currentUser  = currentUser
        else {
            fatalError("Invalid user ")
    }
    
    let amount_str = Utils.readInput(prompt: "Amount to deposit :")
    
    guard let amount = Double(amount_str)
    , amount > 0
    else
    {
        print ("number is not valid")
        return
    }
    
    
    
    currentUser.diposit(amount: amount)
    
    print( "\(amount) diposited successfully !!")
    Utils.pause()
    
    
}


func withdrawMoney(){
    guard
        let currentUser  = currentUser
        else {
            fatalError("Invalid user ")
    }
    
    let amount_str = Utils.readInput(prompt: "Amount to withdraw :")
    
    guard let amount = Double(amount_str)
        , amount > 0
        else
    {
        print ("number is not valid")
        return
    }
    
    
    
    let test = currentUser.withdraw(amount: amount)
    
    if test {
        print( "\(amount) withdraw successfully !!")
        
    }
    else{
        
        print( "\not enough money left !!")
        
    }
    Utils.pause()
    
    
}



func login(){
    
    Utils.clearScreen()
    print(">>>>>>>>> LOGIN")
    let username = Utils.readInput(prompt: "username: ")
    let password = Utils.readInput(prompt: "password: ")


    
    var foundUser = false
    
    
    for user in Users {
        if username == user.username && password == user.password {
            foundUser = true
            currentUser = user
            break
        }
    }
    
    
    if !foundUser
    {
        print ("invalid user name or pass")
        return
    }
    
    print("Access granted!!")
    
    Utils.pause()
    enterUserMenu()
    
}


func signup(){
    Utils.clearScreen()
    print(">>>>>>>>> SIGNUP")
    let username = Utils.readInput(prompt: "username: ")
    let password = Utils.readInput(prompt: "password: ")
    let name = Utils.readInput(prompt: "name : ")

    
    
    Users.append(User(username:username ,password: password,name:name)!)
    
    print("signup success")
    
}





func main(){
    
    
    
    repeat{
        
        Utils.clearScreen()
        
        print("Welcome to swinf bank:")
        print("1 login")
        print("2 signup")
        print("3 Exit")
        
        
        let response_str = Utils.readInput()
        let response  = Int(response_str) ??  -1
        
        
        switch response {
        case 1:
            login()
            
        case 2:
            signup()
            
        case 0:
            return
        default:
            continue
        }
        
    }while true
}

main()


