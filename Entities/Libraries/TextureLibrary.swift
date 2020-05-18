//
//  TextureLibrary.swift
//  MainframeEngine
//
//  Created by cyrus pellet on 11/5/19.
//  Copyright © 2019 cloud31. All rights reserved.
//

import MetalKit

enum TextureTypes{
    case None
    case PartyPirateParot
    case Cruiser
}

class TextureLibrary: Library<TextureTypes, MTLTexture> {
    private var library: [TextureTypes : Texture] = [:]
    
    override func fillLibrary() {
        library.updateValue(Texture("PartyPirateParot"), forKey: .PartyPirateParot)
        library.updateValue(Texture("cruiser", ext: "bmp", origin: .bottomLeft), forKey: .Cruiser)
    }
    
    override subscript(_ type: TextureTypes) -> MTLTexture? {
        return library[type]?.texture
    }
}

class Texture {
    var texture: MTLTexture!
    
    init(_ textureName: String, ext: String = "png", origin: MTKTextureLoader.Origin = .topLeft){
        let textureLoader = TextureLoader(textureName: textureName, textureExtension: ext, origin: origin)
        let texture: MTLTexture = textureLoader.loadTextureFromBundle()
        setTexture(texture)
    }
    
    func setTexture(_ texture: MTLTexture){
        self.texture = texture
    }
}

class TextureLoader {
    private var _textureName: String!
    private var _textureExtension: String!
    private var _origin: MTKTextureLoader.Origin!
    
    init(textureName: String, textureExtension: String = "png", origin: MTKTextureLoader.Origin = .topLeft){
        self._textureName = textureName
        self._textureExtension = textureExtension
        self._origin = origin
    }
    
    public func loadTextureFromBundle()->MTLTexture{
        var result: MTLTexture!
        if let url = Bundle.main.url(forResource: _textureName, withExtension: self._textureExtension) {
            let textureLoader = MTKTextureLoader(device: Engine.Device)
            
            let options: [MTKTextureLoader.Option : Any] = [MTKTextureLoader.Option.origin : _origin, MTKTextureLoader.Option.generateMipmaps : true]
            
            do{
                result = try textureLoader.newTexture(URL: url, options: options)
                result.label = _textureName
            }catch let error as NSError {
                print("ERROR::CREATING::TEXTURE::__\(_textureName!)__::\(error)")
            }
        }else {
            print("ERROR::CREATING::TEXTURE::__\(_textureName!) does not exist")
        }
        
        return result
    }
}
