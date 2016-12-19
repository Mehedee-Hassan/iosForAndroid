//
//  util.swift
//  swiftBank
//
//  Created by Mehedee Hassan on 12/19/16.
//  Copyright © 2016 Mehedee Hassan. All rights reserved.
//

import Foundation


class Utils {
    
    static func readInput(prompt:String = "> ") -> String {
        
        print (prompt ,terminator:"")
        
        repeat{
            guard
                let response_str = readLine(strippingNewline: true)
            
            else {
                    continue
            }
            
            return response_str
            
        }while true
        
    }
    
    
    static func clearScreen(){
        print("")
        print("")
        print("")
        print("")
    }
    
    static func pause(){
        readLine()
    }
    
}
