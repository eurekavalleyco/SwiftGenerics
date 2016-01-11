//
//  SwiftGenerics.swift
//  Sandbox
//
//  Created by Ken M. Haggerty on 1/8/16.
//  Copyright © 2016 MCMDI. All rights reserved.
//

func optionalOr(whereNil boolForNil: Bool, args: Bool?...) -> Bool! {
    for arg: Bool? in args {
        if (arg == nil) {
            if (boolForNil) {
                return true
            }
        }
        else if (arg!) {
            return true
        }
    }
    
    return false
}

func optionalAnd(whereNil boolForNil: Bool, args: Bool?...) -> Bool! {
    for arg: Bool? in args {
        if (arg == nil) {
            if (!boolForNil) {
                return false
            }
        }
        else if (!arg!) {
            return false
        }
    }
    
    return true
}

func nonNil(args: AnyObject?...) -> AnyObject? {
    for arg: AnyObject? in args {
        if (arg != nil) {
            return arg
        }
    }
    
    return nil;
}