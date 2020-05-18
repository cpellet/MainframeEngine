//
//  Sun.swift
//  MainframeEngine
//
//  Created by cyrus pellet on 29/1/20.
//  Copyright © 2020 cloud31. All rights reserved.
//

import simd

class Sun: LightObject{
    init(){
        super.init(name: "Sun")
        self.setScale(0.3)
    }
}
