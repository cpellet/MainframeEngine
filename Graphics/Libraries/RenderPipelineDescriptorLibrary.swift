//
//  RenderPipelineDescriptorLibrary.swift
//  MainframeEngine
//
//  Created by cyrus pellet on 26/4/19.
//  Copyright © 2019 cloud31. All rights reserved.
//

import MetalKit

enum RenderPipelineDescriptorTypes {
    case Basic
    case Instanced
}

class RenderPipelineDescriptorLibrary: Library<RenderPipelineDescriptorTypes, MTLRenderPipelineDescriptor> {
    
    private var _library: [RenderPipelineDescriptorTypes : RenderPipelineDescriptor] = [:]
    
    override func fillLibrary() {
        _library.updateValue(Basic_RenderPipelineDescriptor(), forKey: .Basic)
        _library.updateValue(Instanced_RenderPipelineDescriptor(), forKey: .Instanced)
        
    }
    
    override subscript(_ type: RenderPipelineDescriptorTypes)->MTLRenderPipelineDescriptor{
        return _library[type]!.renderPipelineDescriptor
    }
}

protocol RenderPipelineDescriptor {
    var name: String { get }
    var renderPipelineDescriptor: MTLRenderPipelineDescriptor! { get }
}

public struct Basic_RenderPipelineDescriptor: RenderPipelineDescriptor{
    var name: String = "Basic Render Pipeline Descriptor"
    var renderPipelineDescriptor: MTLRenderPipelineDescriptor!
    init(){
        renderPipelineDescriptor = MTLRenderPipelineDescriptor()
        
        renderPipelineDescriptor.colorAttachments[0].pixelFormat = Preferences.mainPixelFormat
        renderPipelineDescriptor.depthAttachmentPixelFormat = Preferences.mainDepthPixelFormat
        renderPipelineDescriptor.vertexFunction = Graphics.VertexShaders[.Basic]
        renderPipelineDescriptor.fragmentFunction = Graphics.FragmentShaders[.Basic]
        renderPipelineDescriptor.vertexDescriptor = Graphics.VertexDescriptors[.Basic]
    }
}

public struct Instanced_RenderPipelineDescriptor: RenderPipelineDescriptor{
    var name: String = "Basic Render Pipeline Descriptor"
    var renderPipelineDescriptor: MTLRenderPipelineDescriptor!
    init(){
        renderPipelineDescriptor = MTLRenderPipelineDescriptor()
        
        renderPipelineDescriptor.colorAttachments[0].pixelFormat = Preferences.mainPixelFormat
        renderPipelineDescriptor.depthAttachmentPixelFormat = Preferences.mainDepthPixelFormat
        renderPipelineDescriptor.vertexFunction = Graphics.VertexShaders[.Instanced]
        renderPipelineDescriptor.fragmentFunction = Graphics.FragmentShaders[.Basic]
        renderPipelineDescriptor.vertexDescriptor = Graphics.VertexDescriptors[.Basic]
    }
}


