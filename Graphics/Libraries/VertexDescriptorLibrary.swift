//
//  VertexDescriptorLibrary.swift
//  MainframeEngine
//
//  Created by cyrus pellet on 26/4/19.
//  Copyright © 2019 cloud31. All rights reserved.
//

import MetalKit

enum VertexDescriptorTypes {
    case Basic
}

class VertexDescriptorLibrary: Library<VertexDescriptorTypes, MTLVertexDescriptor> {
    
    private var _library: [VertexDescriptorTypes: VertexDescriptor] = [:]
    
    override func fillLibrary() {
        _library.updateValue(Basic_VertexDescriptor(), forKey: .Basic)
    }
    
    override subscript(_ type: VertexDescriptorTypes)->MTLVertexDescriptor {
        return _library[type]!.vertexDescriptor
    }
    
}

protocol VertexDescriptor {
    var name: String { get }
    var vertexDescriptor: MTLVertexDescriptor! { get }
}

public struct Basic_VertexDescriptor: VertexDescriptor{
    var name: String = "Basic Vertex Descriptor"
    
    var vertexDescriptor: MTLVertexDescriptor!
    init(){
        vertexDescriptor = MTLVertexDescriptor()
        
        //Position
        vertexDescriptor.attributes[0].format = .float3
        vertexDescriptor.attributes[0].bufferIndex = 0
        vertexDescriptor.attributes[0].offset = 0
        
        //Color
        vertexDescriptor.attributes[1].format = .float4
        vertexDescriptor.attributes[1].bufferIndex = 0
        vertexDescriptor.attributes[1].offset = float3.size
        
        //Texture coordinate
        vertexDescriptor.attributes[2].format = .float2
        vertexDescriptor.attributes[2].bufferIndex = 0
        vertexDescriptor.attributes[2].offset = float3.size + float4.size
        
        vertexDescriptor.layouts[0].stride = Vertex.stride
    }
}
