//
//  ViewController.swift
//  testFBApp
//
//  Created by Csipler Zoltan on 2018. 01. 08..
//  Copyright © 2018. Mito Europe Kft. All rights reserved.
//

import UIKit

import FBSDKCoreKit
import FBSDKLoginKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let facebookReadPermissions = ["public_profile"]

        let facebookLoginManager = FBSDKLoginManager()

        facebookLoginManager.loginBehavior = .native
        facebookLoginManager.logIn(withReadPermissions: facebookReadPermissions, from: nil, handler: { _,_  in
            print("Facebook Login Called Back")
        })
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

