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
    var cameraNode: SCNNode!

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    func setupView() {
        sceneView = view as! SCNView
        
        sceneView.showsStatistics = true
        sceneView.allowsCameraControl = true
        sceneView.autoenablesDefaultLighting = true
        
        setupScene()
    }
    
    func setupScene() {
        scene = SCNScene()
        sceneView.scene = scene
        setupCamera()
    }
    
    func setupCamera() {
        cameraNode = SCNNode()
        cameraNode.camera = SCNCamera()
        cameraNode.position = SCNVector3(x: 0, y: 0, z: 5)
        scene.rootNode.addChildNode(cameraNode)
        
        addSquare()
    }
    
    func addSquare() {
        let geometry = SCNBox(width: 1.0, height: 1.0, length: 1.0, chamferRadius: 0.0)
        let squareNode = SCNNode()
        squareNode.geometry = geometry
        scene.rootNode.addChildNode(squareNode)
    }
    
}
