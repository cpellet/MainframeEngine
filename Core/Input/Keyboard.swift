//
//  Keyboard.swift
//  MainframeEngine
//
//  Created by cyrus pellet on 27/4/19.
//  Copyright © 2019 cloud31. All rights reserved.
//

class Keyboard{
    private static var KEY_COUNT: Int = 256
    private static var keys = [Bool].init(repeating: false, count: KEY_COUNT)
    
    public static func SetKeyPressed(_ keyCode: UInt16, isOn: Bool) {
        keys[Int(keyCode)] = isOn
    }
    
    public static func IsKeyPressed(_ keyCode: Keycode)->Bool{
        return keys[Int(keyCode.rawValue)]
    }
}
