//
//  GameObject.swift
//  MainframeEngine
//
//  Created by cyrus pellet on 26/4/19.
//  Copyright © 2019 cloud31. All rights reserved.
//

import MetalKit

class GameObject: Node {
    private var _modelConstants = ModelConstants()
    private var _mesh: Mesh!

    private var _material: Material? = nil
    private var _baseColorTextureType: TextureTypes = TextureTypes.None
    
    init(name: String, meshType: MeshTypes) {
        super.init(name: name)
        _mesh = Entities.Meshes[meshType]
    }
    
    override func update(){
        _modelConstants.modelMatrix = self.modelMatrix
        super.update()
    }
    
}

extension GameObject: Renderable{
    func doRender(_ renderCommandEncoder: MTLRenderCommandEncoder) {
        renderCommandEncoder.setRenderPipelineState(Graphics.RenderPipelineStates[.Basic])
        renderCommandEncoder.setDepthStencilState(Graphics.DepthStencilStates[.Less])
        //Vertex Shader
        renderCommandEncoder.setVertexBytes(&_modelConstants, length: ModelConstants.stride, index: 2)
        
        //Fragment Shader
        _mesh.drawPrimitives(renderCommandEncoder, baseColorTextureType: _baseColorTextureType, material: _material)
    }
}

//Material Properties
extension GameObject {
    public func useBaseColorTexture(_ textureType: TextureTypes){
        self._baseColorTextureType = textureType
    }
    public func useMaterial(_ material: Material){
        _material = material
    }
}

