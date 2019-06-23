//
//  GameViewController.swift
//  SceneKitDemo
//
//  Created by Binh Phan on 6/23/19.
//  Copyright © 2019 Binh Phan. All rights reserved.
//

import UIKit
import QuartzCore
import SceneKit

class GameViewController: UIViewController {
    
    var sceneView: SCNView!
    var scene: SCNScene!

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    func setupView() {
        sceneView = view as! SCNView
        setupScene()
    }
    
    func setupScene() {
        scene = SCNScene()
        sceneView.scene = scene
    }
}
