//
//  LoadingViewController.swift
//  LoadingUI
//
//  Created by Cora Jacobson on 10/5/20.
//

import UIKit
import SceneKit

public class LoadingViewController: UIViewController {
    
    private var scnView: SCNView!
    private var scnScene: SCNScene!
    private var cameraNode: SCNNode!
    
    private var drawingController = DrawingController()
    
    public var duration: Double = 5
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupScene()
        setupCamera()
    }
    
    public override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        for node in scnScene.rootNode.childNodes {
            node.removeFromParentNode()
        }
        setupLighting()
        drawingController.tea.height = 0
        drawingController.draw(scnScene, duration)
        perform(#selector(fill), with: nil, afterDelay: TimeInterval(1.75))
    }
    
    private func setupView() {
        scnView = SCNView()
        scnView.allowsCameraControl = false
        scnView.autoenablesDefaultLighting = false
        scnView.backgroundColor = UIColor(red: 200/255, green: 150/255, blue: 255/255, alpha: 1)
        self.view = scnView
    }
    
    private func setupScene() {
        scnScene = SCNScene()
        scnView.scene = scnScene
    }
    
    private func setupCamera() {
        cameraNode = SCNNode()
        cameraNode.camera = SCNCamera()
        cameraNode.position = SCNVector3(x: 0, y: 2, z: 15)
        scnScene.rootNode.addChildNode(cameraNode)
    }
    
    private func setupLighting() {
        let ambientNode = SCNNode()
        ambientNode.light = SCNLight()
        ambientNode.light?.type = .ambient
        ambientNode.light?.color = UIColor(white: 0.67, alpha: 1.0)
        scnScene.rootNode.addChildNode(ambientNode)

        let lightingNode = SCNNode()
        lightingNode.light = SCNLight()
        lightingNode.light?.type = .omni
        lightingNode.light?.color = UIColor(white: 0.75, alpha: 1.0)
        lightingNode.position = SCNVector3(0, 20, 20)
        scnScene.rootNode.addChildNode(lightingNode)
    }
    
    @objc func fill() {
        SCNTransaction.animationDuration = duration - 1.75
        drawingController.tea.height = 3
        drawingController.teaNode.position = SCNVector3(0, 0, 0)
    }

}
