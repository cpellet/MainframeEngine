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
    var theSuzannes = Cube()
    var sun = Sun()
    
    override func buildScene() {
        debugCamera.setPosition(0,0,10)
        addCamera(debugCamera)
        sun.setPosition(0, 2, 0)
        sun.setLightBrightness(0.3)
        sun.setLightColor(1,1,1)
        sun.setLightAmbientIntensity(0.04)
        addLight(sun)
        addChild(theSuzannes)
    }
    override func doUpdate() {
        if(Mouse.IsMouseButtonPressed(button: .left)){
            theSuzannes.rotateX(Mouse.GetDY() * GameTime.DeltaTime)
            theSuzannes.rotateY(Mouse.GetDX() * GameTime.DeltaTime)
        }
    }
}
