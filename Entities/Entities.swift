//
//  Entities.swift
//  MainframeEngine
//
//  Created by cyrus pellet on 10/5/19.
//  Copyright © 2019 cloud31. All rights reserved.
//

class Entities {
    
    private static var _meshLibrary: MeshLibrary!
    public static var Meshes: MeshLibrary { return _meshLibrary }
    
    private static var _textureLibrary: TextureLibrary!
    public static var Textures: TextureLibrary { return _textureLibrary }
    
    public static func Initialize() {
        self._meshLibrary = MeshLibrary()
        self._textureLibrary = TextureLibrary()
    }
}
