//
//  Utils.swift
//  swiftLibrary
//
//  Created by Mehedee Hassan on 12/23/16.
//  Copyright © 2016 Mehedee Hassan. All rights reserved.
//

import UIKit
import Foundation
import CoreData


class Utils {

    
    
    
}


extension Utils{
    
    
    static func jsonStringToDic (src: NSString ) -> NSDictionary? {
    
    
        let data = src.data(using: String.Encoding.utf8.rawValue)
        var error : NSError?
        
        
        let anyObj : AnyObject?
        
        
        do{
            
            anyObj = try (JSONSerialization.jsonObject(with: data))
            
            
        }catch let error1 as NSError{
            
            error = error1
            anyObj = nil
        }
        
        if error!=nil {
            
            print ("JSON ERROR \(error!.localizedDescription)")
            
            return nil
            
            
        }else {
        
            return anyObj as? NSDictionary
        }
        
        
    
    
    }
    
    
}
