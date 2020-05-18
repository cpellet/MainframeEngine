//
//  ShaderLibrary.swift
//  MainframeEngine
//
//  Created by cyrus pellet on 18/5/20.
//  Copyright © 2020 cloud31. All rights reserved.
//

import MetalKit

 enum ShaderTypes {
    // Vertex
    case Basic_Vertex
    case Instanced_Vertex

     // Fragment
    case Basic_Fragment
}

 class ShaderLibrary: Library<ShaderTypes, MTLFunction> {
    private var _library: [ShaderTypes: Shader] = [:]

     override func fillLibrary() {
        // Vertex Shaders
        _library.updateValue(Shader(functionName: "basic_vertex_shader"), forKey: .Basic_Vertex)
        _library.updateValue(Shader(functionName: "instanced_vertex_shader"), forKey: .Instanced_Vertex)

         // Fragment Shaders
        _library.updateValue(Shader(functionName: "basic_fragment_shader"), forKey: .Basic_Fragment)
    }

     override subscript(_ type: ShaderTypes)->MTLFunction {
        return (_library[type]?.function)!
    }
}

 class Shader {
    var function: MTLFunction!
    init(functionName: String) {
        self.function = Engine.DefaultLibrary.makeFunction(name: functionName)
        self.function.label = functionName
    }
}
