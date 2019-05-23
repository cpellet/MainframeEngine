//
//  Shader.swift
//  MainframeEngine
//
//  Created by cyrus pellet on 10/5/19.
//  Copyright © 2019 cloud31. All rights reserved.
//

import MetalKit

class Shader {
    
    var function: MTLFunction!
    init(name: String, functionName: String) {
        self.function = Engine.DefaultLibrary.makeFunction(name: functionName)
        self.function.label = name
    }
    
}
