//
//  ArViewController.swift
//  Swift_quiz
//
//  Created by user on 2023/06/14.
//

import UIKit
import RealityKit

class ArViewController: UIViewController {
    

    @IBOutlet var arView: ARView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Load the "Box" scene from the "Experience" Reality File
        let boxAnchor = try! Experience.loadBox()
        
        // Add the box anchor to the scenne
        
        arView.scene.anchors.append(boxAnchor)
    }
}

