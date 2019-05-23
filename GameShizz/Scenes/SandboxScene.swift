//
//  SandboxScene3D.swift
//  MainframeEngine
//
//  Created by cyrus pellet on 28/4/19.
//  Copyright © 2019 cloud31. All rights reserved.
//

import MetalKit

class SandboxScene: Scene{
    
    var debugCamera = DebugCamera()
    var cruiser = Cruiser()
    override func buildScene() {
        addCamera(debugCamera)
        
        debugCamera.setPositionZ(3)
        
        addChild(cruiser)
    }
    override func doUpdate() {
        if(Mouse.IsMouseButtonPressed(button: .LEFT)){
            cruiser.rotateX(Mouse.GetDY() * GameTime.DeltaTime)
            cruiser.rotateY(Mouse.GetDX() * GameTime.DeltaTime)
        }
    }
}
