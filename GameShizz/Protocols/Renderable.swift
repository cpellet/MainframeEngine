//
//  Renderable.swift
//  MainframeEngine
//
//  Created by cyrus pellet on 27/4/19.
//  Copyright © 2019 cloud31. All rights reserved.
//

import MetalKit

protocol Renderable{
    func doRender(_ renderCommandEncoder: MTLRenderCommandEncoder)
}
