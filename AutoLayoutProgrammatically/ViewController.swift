//
//  ViewController.swift
//  AutoLayoutProgrammatically
//
//  Created by Ryo Togashi on 2019-08-14.
//  Copyright © 2019 Ryo Togashi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let leftTopCornerView: UIView = {
        let v = UIView(frame: .zero)
        v.backgroundColor = .blue
        v.translatesAutoresizingMaskIntoConstraints = false
        
        return v
    }()
    
    let centerView: UIView = {
        let v = UIView(frame: .zero)
        v.backgroundColor = .red
        v.translatesAutoresizingMaskIntoConstraints = false
        
        return v
    }()
    
//    let rightBottomView: UIView = {
//        let v = UIView(frame: CGRect(x: 200, y: 500, width: 200, height: 70))
//        v.backgroundColor = .orange
//        v.translatesAutoresizingMaskIntoConstraints = false
//
//        return v
//    }()
    
    let purpleView: UIView = {
        let v = UIView(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        v.backgroundColor = .purple
        v.translatesAutoresizingMaskIntoConstraints = false
        
        return v
    }()


    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
        
        view.addSubview(leftTopCornerView)
        view.addSubview(centerView)
//        view.addSubview(rightBottomView)
        view.addSubview(purpleView)
        
        leftTopCornerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16).isActive = true
        leftTopCornerView.topAnchor.constraint(equalTo: view.topAnchor, constant: 16).isActive = true
        leftTopCornerView.widthAnchor.constraint(equalToConstant: 100).isActive = true
        leftTopCornerView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        centerView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        centerView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        centerView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.7).isActive = true
        centerView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        centerView.layer.cornerRadius = 50
        
//        rightBottomView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16).isActive = true
//        rightBottomView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -16).isActive = true
//        rightBottomView.widthAnchor.constraint(equalTo: view.widthAnchor, constant: 200).isActive = true
//        rightBottomView.heightAnchor.constraint(equalToConstant: 70).isActive = true
        
        purpleView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16).isActive = true
        purpleView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -16).isActive = true
        purpleView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.7).isActive = true
        purpleView.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        
    }
}

