//
//  BaseViewController.swift
//  WorkoutApp
//
//  Created by Наталья Шарапова on 09.10.2022.
//

import UIKit

enum NavBarButtonPosition {
    case left
    case right
}

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
        
        func navBarLeftButton() {
            print("navbar left button tapped")
        }
        
        func navBarRightButton() {
            print("navbar right button tapped")
        }
    }
    
extension BaseViewController {
    
    func addNavBarButton(at position: NavBarButtonPosition, title: String) {
        
        let button = UIButton(type: .system)
        button.setTitle(title, for: .normal)
        button.setTitleColor(Resources.Colors.active, for: .normal)
        button.setTitleColor(Resources.Colors.inactive, for: .disabled)
        button.titleLabel?.font = Resources.Fonts.helvetica(with: 17)
        
        switch position {
        case .left:
            button.addTarget(self, action: #selector(navBarLeftButton), for: .touchUpInside)
            navigationItem.leftBarButtonItem = UIBarButtonItem(customView: button)
        case .right:
            button.addTarget(self, action: #selector(navBarRightButton), for: .touchUpInside)
            navigationItem.rightBarButtonItem = UIBarButtonItem(customView: button)
    }
    
}
}
