//
//  BaseViewController.swift
//  WorkoutApp
//
//  Created by Наталья Шарапова on 09.10.2022.
//

import UIKit

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    configure()
    }
}
    
    @objc extension BaseViewController {
        
        func addViews() {}
        func layoutViews() {}
        func configure() {
            view.backgroundColor = Resources.Colors.background
        }
    }
    

