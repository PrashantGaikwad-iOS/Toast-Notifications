//
//  ViewController.swift
//  Toast Notifications
//
//  Created by Prashant G on 1/26/19.
//  Copyright © 2019 Prashant G. All rights reserved.
//

import UIKit
import Toast_Swift

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func showToast(_ sender: Any) {
        // basic usage
        self.view.makeToast("This is a piece of toast")
        
        // toast with a specific duration and position
        self.view.makeToast("This is a piece of toast", duration: 3.0, position: .center)
        
        // toast presented with multiple options and with a completion closure
        self.view.makeToast("This is a piece of toast", duration: 4.0, point: CGPoint(x: 200.0, y: UIScreen.main.bounds.width/2), title: "Toast Title", image: UIImage(named: "toast.png")) { didTap in
            if didTap {
                print("completion from tap")
            } else {
                print("completion without tap")
            }
        }
    }
    

}

