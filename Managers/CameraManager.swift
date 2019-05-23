//
//  CameraManager.swift
//  MainframeEngine
//
//  Created by cyrus pellet on 28/4/19.
//  Copyright © 2019 cloud31. All rights reserved.
//

class CameraManager {
    
    private var _cameras: [CameraTypes : Camera] = [:]
    
    public var currentCamera: Camera!
    
    public func registerCamera(camera: Camera){
        self._cameras.updateValue(camera, forKey: camera.cameraType)
    }
    
    public func setCamera(_ cameraType: CameraTypes){
        self.currentCamera = _cameras[cameraType]
    }
    
    internal func update(){
        for camera in _cameras.values {
            camera.update()
        }
    }
    
}
