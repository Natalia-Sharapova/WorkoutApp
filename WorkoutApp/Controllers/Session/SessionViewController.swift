//
//  SessionViewController.swift
//  WorkoutApp
//
//  Created by Наталья Шарапова on 10.10.2022.
//

import UIKit

class SessionViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Session"
        
        addNavBarButton(at: .left, title: "Pause")
        addNavBarButton(at: .right, title: "Finish")
    }
    
    override func navBarLeftButton() {
        print("session navbar left button")
    }
    
    override func navBarRightButton() {
        print("session navbar right button")
    }
    
}
