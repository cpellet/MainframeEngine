//
//  Camera.swift
//  MainframeEngine
//
//  Created by cyrus pellet on 28/4/19.
//  Copyright © 2019 cloud31. All rights reserved.
//

import simd

enum CameraTypes {
    case Debug
}

class Camera: Node {
    var cameraType: CameraTypes!
    
    var viewMatrix: matrix_float4x4 {
        var viewMatrix = matrix_identity_float4x4
        viewMatrix.translate(direction: -getPosition())
        return viewMatrix
    }
    
    var projectionMatrix: matrix_float4x4 {
        return matrix_identity_float4x4
    }
    
    init(cameraType: CameraTypes){
        super.init(name: "Camera")
        self.cameraType = cameraType
    }
}
