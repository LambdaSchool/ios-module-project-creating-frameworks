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
    
    private let cupColor = UIColor(red: 0/255, green: 200/255, blue: 200/255, alpha: 0.8)
    private let teaColor = UIColor(red: 180/255, green: 120/255, blue: 50/255, alpha: 1)
    private let tea = SCNCylinder(radius: 1.4, height: 0)
    private var teaNode = SCNNode()
    
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
        tea.height = 0
        setupLighting()
        draw()
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
    
    private func draw() {
        let cup = SCNTube(innerRadius: 1.4, outerRadius: 1.7, height: 3.5)
        cup.materials.first?.diffuse.contents = cupColor
        let cupNode = SCNNode(geometry: cup)
        cupNode.position = SCNVector3(1, -2, 0)
        scnScene.rootNode.addChildNode(cupNode)
        
        let handle = SCNTorus(ringRadius: 0.5, pipeRadius: 0.15)
        handle.materials.first?.diffuse.contents = cupColor
        let handleNode = SCNNode(geometry: handle)
        handleNode.position = SCNVector3(1.85, 0, 0)
        handleNode.localRotate(by: SCNVector4(0.85, -0.15, 0, 1.3))
        cupNode.addChildNode(handleNode)
        
        tea.materials.first?.diffuse.contents = teaColor
        teaNode = SCNNode(geometry: tea)
        teaNode.position = SCNVector3(0, -1.5, 0)
        cupNode.addChildNode(teaNode)
        
        perform(#selector(fill), with: nil, afterDelay: TimeInterval(1.75))
        
        let teapot = SCNCone(topRadius: 1, bottomRadius: 2, height: 3.5)
        teapot.materials.first?.diffuse.contents = UIColor.systemIndigo
        let teapotNode = SCNNode(geometry: teapot)
        teapotNode.position = SCNVector3(4, 8, -3)
        let moveIn = SCNAction.moveBy(x: -1, y: -4, z: 3, duration: 0.5)
        let tip = SCNAction.rotateBy(x: 0, y: 0, z: 1, duration: 0.25)
        let pour = SCNAction.moveBy(x: 0, y: 0.25, z: 0, duration: (duration - 1.5))
        let straighten = SCNAction.rotateBy(x: 0, y: 0, z: -1, duration: 0.25)
        let moveOut = SCNAction.moveBy(x: 1, y: 3.75, z: -3, duration: 0.5)
        let moveSequence = SCNAction.sequence([moveIn, tip, pour, straighten, moveOut])
        scnScene.rootNode.addChildNode(teapotNode)
        teapotNode.runAction(moveSequence)
        
        let potHandle = SCNTorus(ringRadius: 0.4, pipeRadius: 0.15)
        potHandle.materials.first?.diffuse.contents = UIColor.systemIndigo
        let potHandleNode = SCNNode(geometry: potHandle)
        potHandleNode.position = SCNVector3(1.65, 0.5, 0)
        potHandleNode.localRotate(by: SCNVector4(0.75, 0.1, 0, 1.3))
        teapotNode.addChildNode(potHandleNode)
        
        let knob = SCNSphere(radius: 0.25)
        knob.materials.first?.diffuse.contents = UIColor.systemIndigo
        let knobNode = SCNNode(geometry: knob)
        knobNode.position = SCNVector3(0, 2, 0)
        teapotNode.addChildNode(knobNode)
        
        let spout = SCNCone(topRadius: 0.2, bottomRadius: 0.4, height: 1.5)
        spout.materials.first?.diffuse.contents = UIColor.systemIndigo
        let spoutNode = SCNNode(geometry: spout)
        spoutNode.position = SCNVector3(-1.65, 0.5, 0)
        spoutNode.localRotate(by: SCNVector4(0, 0, 0.5, 1))
        teapotNode.addChildNode(spoutNode)

        DispatchQueue.main.asyncAfter(deadline: .now() + 0.75) {
            let spoutTip = SCNSphere(radius: 0.1)
            spoutTip.materials.first?.diffuse.contents = UIColor.clear
            let spoutTipNode = SCNNode(geometry: spoutTip)
            spoutTipNode.position = SCNVector3(0, 0.75, 0)
            let emitter = self.createTeaStream()
            spoutTipNode.addParticleSystem(emitter)
            spoutNode.addChildNode(spoutTipNode)
        }
    }
    
    @objc func fill() {
        SCNTransaction.animationDuration = duration - 1.75
        tea.height = 3
        teaNode.position = SCNVector3(0, 0, 0)
    }
    
    func createTeaStream() -> SCNParticleSystem {
        let stream = SCNParticleSystem()
        let teaParticle = TeaParticle()
        stream.particleImage = UIImage(view: teaParticle)
        stream.particleColor = teaColor
        stream.particleColorVariation = SCNVector4(0.01, 0.01, 0.01, 0)
        stream.particleSize = 0.1
        stream.particleSizeVariation = 0.05
        stream.birthRate = 200
        stream.idleDuration = 5
        stream.emissionDuration = CGFloat(duration - 1.5)
        stream.particleLifeSpan = 1
        stream.particleMass = 10
        stream.particleVelocity = 1
        stream.particleVelocityVariation = 0.5
        stream.isAffectedByGravity = true
        stream.particleDiesOnCollision = true
        return stream
    }

}
