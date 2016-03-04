//
//  AppDelegate.swift
//  TouchIDDemo
//
//  Created by Gabriel Theodoropoulos on 8/25/14.
//  Copyright (c) 2014 Appcoda. All rights reserved.
//

import UIKit
import SafariServices
@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
                            
    var window: UIWindow?
    
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject : AnyObject]?) -> Bool {
        print(getPathOfDataFile())
        return true
    }
    
    func getPathOfDataFile() -> String {
        let pathsArray = NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory.DocumentDirectory, NSSearchPathDomainMask.UserDomainMask, true)
        let documentsPath = pathsArray[0] as String
        let dataFilePath = documentsPath.stringByAppendingString("notesData")
        
        return dataFilePath
    }

    func checkIfDataFileExists() -> Bool {
        if NSFileManager.defaultManager().fileExistsAtPath(getPathOfDataFile()) {
            return true
        }
        
        return false
    }
}

