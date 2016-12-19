//
//  User.swift
//  swiftBank
//
//  Created by Mehedee Hassan on 12/20/16.
//  Copyright © 2016 Mehedee Hassan. All rights reserved.
//

import Foundation

class User {
    var name:String!
    var username:String!
    var password:String!
    
    var savings : Double = 0.0
    
    
    
    init?(username:String ,password:String ,name:String) {
        
        if username.isEmpty
            || name.isEmpty
            || password.isEmpty
        {
            return nil
        }
        
        
        self.username = username
        self.password = password
        self.name = name
        
        
    }
    
    
    
    func diposit(amount : Double)
    {
        savings += amount
    }
    
    
    func withdraw(amount :Double ) ->Bool{
        
        let actualAmount = savings - amount
        
        if actualAmount < 0.0 {
            return false
            
        }
        
        
        savings -= max(0.0, amount)
        
        
        return true
    }
    
    
    func outputDetails(){
        print ("Username : \(username!) \n name: \(name! ) \n has \(savings) money in account")
    }
    
}
