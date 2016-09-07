//
//  Convertible.swift
//  Ditto
//
//  Created by Kevin Lin on 7/9/16.
//  Copyright © 2016 Kevin. All rights reserved.
//

/**
 Convertible defines how a swift obejct should be converted to a JSON object compatible value.
 
 Example:
 ```
 extension URL: Convertible {
    public func convert() -> Any {
        return self.absoluteString
    }
 }
 ```
 Please refer to ConvertibleTypes for built-in convertible types.
 */
public protocol Convertible {
    
    /**
     Convert the current object to a JSON object compatible value.
     You can convert your custom type to any JSON object compatible value.
     
     - returns: JSON object compatible value.
     */
    func convert() -> Any
}
