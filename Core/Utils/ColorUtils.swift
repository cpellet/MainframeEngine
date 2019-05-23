//
//  ColorUtils.swift
//  MainframeEngine
//
//  Created by cyrus pellet on 28/4/19.
//  Copyright © 2019 cloud31. All rights reserved.
//

import simd

class ColorUtils{
    public static var randomColor: float4{
        return float4(Float.randomZeroToOne, Float.randomZeroToOne, Float.randomZeroToOne, 1.0)
    }
}
