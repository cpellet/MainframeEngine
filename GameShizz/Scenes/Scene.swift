//
//  Scene.swift
//  MainframeEngine
//
//  Created by cyrus pellet on 27/4/19.
//  Copyright © 2019 cloud31. All rights reserved.
//

import MetalKit

class Scene: Node {
    
    var cameraManager = CameraManager()
    var sceneConstants = SceneConstants()
    
    init(){
        super.init(name: "Scene")
        buildScene()
    }
    
    func buildScene() { }
    
    func addCamera(_ camera: Camera, _ isCurrentCamera: Bool = true){
        cameraManager.registerCamera(camera: camera)
        if(isCurrentCamera){
            cameraManager.setCamera(camera.cameraType)
        }
    }
    
    func updateSceneConstants(){
        sceneConstants.totalGameTime = GameTime.TotalGameTime
        sceneConstants.viewMatrix = cameraManager.currentCamera.viewMatrix
        sceneConstants.projectionMatrix = cameraManager.currentCamera.projectionMatrix
    }
    
    func updateCameras(){
        cameraManager.update()
    }
    
    override func update() {
        updateSceneConstants()
        super.update()
    }
    
    override func render(renderCommandEncoder: MTLRenderCommandEncoder) {
        renderCommandEncoder.setVertexBytes(&sceneConstants, length: SceneConstants.stride, index: 1)
        super.render(renderCommandEncoder: renderCommandEncoder)
    }
    
}
