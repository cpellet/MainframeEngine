//
//  Library.swift
//  MainframeEngine
//
//  Created by cyrus pellet on 10/5/19.
//  Copyright © 2019 cloud31. All rights reserved.
//

class Library<T,K> {
    
    init() {
        fillLibrary()
    }
    
    func fillLibrary() {
        //Override this function when filling the library with default values
    }
    
    subscript(_ type: T)->K? {
        return nil
    }
    
}
