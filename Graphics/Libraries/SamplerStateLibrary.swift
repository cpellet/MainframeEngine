//
//  SamplerStateLibrary.swift
//  MainframeEngine
//
//  Created by cyrus pellet on 11/5/19.
//  Copyright © 2019 cloud31. All rights reserved.
//

import MetalKit

enum SamplerStateTypes {
    case None
    case Linear
}

class SamplerStateLibrary: Library<SamplerStateTypes, MTLSamplerState> {
    
    private var library: [SamplerStateTypes : SamplerState] = [:]
    
    override func fillLibrary() {
        library.updateValue(Linear_SamplerState(), forKey: .Linear)
    }
    
    override subscript(_ type: SamplerStateTypes) -> MTLSamplerState {
        return (library[type]?.samplerState!)!
    }
    
}

protocol SamplerState {
    var name: String { get }
    var samplerState: MTLSamplerState! { get }
}

class Linear_SamplerState: SamplerState {
    var name: String = "Linear Sampler State"
    var samplerState: MTLSamplerState!
    
    init() {
        let samplerDescriptor = MTLSamplerDescriptor()
        samplerDescriptor.minFilter = .linear
        samplerDescriptor.magFilter = .linear
        samplerDescriptor.label = name
        samplerState = Engine.Device.makeSamplerState(descriptor: samplerDescriptor)
    }
}
