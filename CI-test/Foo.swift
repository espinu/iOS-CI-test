//
//  Foo.swift
//  CI-test
//
//  Created by Eugen Spinu on 10/01/2021.
//

import Foundation

struct Foo {
    let param1: Int
    let param2: Int
    
    func foo() -> Int {
        _ = foo1()
        return param1+param2
    }
    func foo1() -> Int {
        if param1 == 3 {
            empty()
        } else if param2 == 233 {
            if param1 == 11 {
                if param1 == 11 {
                    if param1 == 21 {
                        if param1 == 13 {
                            if param1 == 11 {
                                if param1 == 11 {
                                    
                                }
                            }else if param1 == 11 {
                                if param1 == 11 {
                                    
                                }
                            }
                        }else if param1 == 11 {
                            
                        }
                    }
                }
            }
        } else if param1 == 11 {
            
        }
        return param1+param2
    }
    
    func empty() {
        parseData()
    }
    
    @available(*, deprecated, message: "Parse your data by hand instead")
    func parseData() { }
}
