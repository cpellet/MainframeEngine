//
//  Cruiser.swift
//  MainframeEngine
//
//  Created by cyrus pellet on 11/5/19.
//  Copyright © 2019 cloud31. All rights reserved.
//

import MetalKit

class Cruiser: GameObject{
    init(){
        super.init(name: "Cruiser", meshType: .Cruiser)
        useBaseColorTexture(.Cruiser)
    }
}
