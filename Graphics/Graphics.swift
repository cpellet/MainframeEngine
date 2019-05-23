//
//  Graphics.swift
//  MainframeEngine
//
//  Created by cyrus pellet on 10/5/19.
//  Copyright © 2019 cloud31. All rights reserved.
//

class Graphics {
    
    private static var _vertexShaderLibrary: VertexShaderLibrary!
    public static var VertexShaders: VertexShaderLibrary { return _vertexShaderLibrary }
    
    private static var _fragmentShaderLibrary: FragmenthaderLibrary!
    public static var FragmentShaders: FragmenthaderLibrary { return _fragmentShaderLibrary }
    
    private static var _vertexDescriptorLibrary: VertexDescriptorLibrary!
    public static var VertexDescriptors: VertexDescriptorLibrary { return _vertexDescriptorLibrary }
    
    private static var _renderPipelineDescriptorLibrary: RenderPipelineDescriptorLibrary!
    public static var RenderPipelineDescriptors: RenderPipelineDescriptorLibrary { return _renderPipelineDescriptorLibrary }
    
    private static var _renderPipelineStateLibrary: RenderPipelineStateLibrary!
    public static var RenderPipelineStates: RenderPipelineStateLibrary { return _renderPipelineStateLibrary }
    
    private static var _depthStencilStateLibrary: DepthStencilStateLibrary!
    public static var DepthStencilStates: DepthStencilStateLibrary { return _depthStencilStateLibrary }
    
    private static var _samplerStateLibrary: SamplerStateLibrary!
    public static var SamplerStates: SamplerStateLibrary { return _samplerStateLibrary }
    
    public static func Initialize() {
        self._vertexShaderLibrary = VertexShaderLibrary()
        self._fragmentShaderLibrary = FragmenthaderLibrary()
        self._vertexDescriptorLibrary = VertexDescriptorLibrary()
        self._renderPipelineDescriptorLibrary = RenderPipelineDescriptorLibrary()
        self._renderPipelineStateLibrary = RenderPipelineStateLibrary()
        self._depthStencilStateLibrary = DepthStencilStateLibrary()
        self._samplerStateLibrary = SamplerStateLibrary()
    }
    
}
