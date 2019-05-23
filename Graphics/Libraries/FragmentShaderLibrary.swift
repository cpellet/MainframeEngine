//
//  FragmentShaderLibrary.swift
//  MainframeEngine
//
//  Created by cyrus pellet on 10/5/19.
//  Copyright © 2019 cloud31. All rights reserved.
//

import MetalKit

enum FragmentShaderTypes {
    case Basic
}

class FragmenthaderLibrary: Library<FragmentShaderTypes, MTLFunction> {
    
    private var _library: [FragmentShaderTypes: Shader] = [:]
    
    override func fillLibrary() {
        _library.updateValue(Shader(name: "Basic Fragment Shader",
                                    functionName: "basic_fragment_shader"),
                             forKey: .Basic)
    }
    
    override subscript(_ type: FragmentShaderTypes)->MTLFunction {
        return (_library[type]?.function)!
    }
    
}
