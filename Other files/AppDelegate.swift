//
//  AppDelegate.swift
//  MainframeEngine
//
//  Created by cyrus pellet on 23/4/19.
//  Copyright © 2019 cloud31. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {



    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        // Create a Sentry client and start crash handler
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


    func applicationShouldTerminate(_ sender: NSApplication) -> NSApplication.TerminateReply {
        // Save changes in the application's managed object context before the application terminates.
        return NSApplication.TerminateReply.terminateNow
    }

}

