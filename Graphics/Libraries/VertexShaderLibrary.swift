//
//  ShaderLibrary.swift
//  MainframeEngine
//
//  Created by cyrus pellet on 26/4/19.
//  Copyright © 2019 cloud31. All rights reserved.
//

import MetalKit

enum VertexShaderTypes{
    case Basic
    case Instanced
}

class VertexShaderLibrary: Library<VertexShaderTypes, MTLFunction> {
    
    private var _library: [VertexShaderTypes: Shader] = [:]
    
    override func fillLibrary() {
        _library.updateValue(Shader(name: "Basic Vertex Shader",
                                    functionName: "basic_vertex_shader"),
                             forKey: .Basic)
        
        _library.updateValue(Shader(name: "Instanced Vertex Shader",
                                    functionName: "instanced_vertex_shader"),
                             forKey: .Instanced)
    }
    
    override subscript(_ type: VertexShaderTypes)->MTLFunction {
        return (_library[type]?.function)!
    }
    
}
