//
//  CustomScene.swift
//  Contained
//
//  Created by Dongwoo Pae on 5/8/19.
//  Copyright © 2019 Dongwoo Pae. All rights reserved.
//

import SpriteKit

class CustomScene: SKScene {
    let crab = SKSpriteNode()
    
    
    // Add and center child, initializing animation sequence
    override func sceneDidLoad() {
        super.sceneDidLoad()
        addChild(crab)
        loadCrab()
    }

    // Move to touch
   
    public override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        // Fetch a touch or leave
        guard !touches.isEmpty, let touch = touches.first else { return }
        
        // Retrieve position
        let position = touch.location(in: self)
        
        // Create move action
        let actionDuration = 1.0
        let moveAction = SKAction.move(to: position, duration: actionDuration)
        
        let rollAction = SKAction.rotate(byAngle: CGFloat.pi * 2, duration: actionDuration)
        let zoomAction = SKAction.scale(by: 1.3, duration: 0.3)
        let unzoomAction = SKAction.scale(to: 1.0, duration: 0.1)
        
        
        switch Settings.shared.shouldZoom {
        case false:
            crab.run(moveAction)
        case true:
            let sequenceAction = SKAction.sequence([zoomAction, moveAction, unzoomAction])
            crab.run(sequenceAction)
        }
        
        if Settings.shared.shouldRoll {
            crab.run(rollAction)
        }
    }

    
    
/* Basic Persistence in process
     
    private var persistentFileURL: URL? {
        let fileManager = FileManager.default
        guard let documentDirectory = fileManager.urls(for: .documentDirectory, in: .userDomainMask).first else {return nil}
        return documentDirectory.appendingPathComponent("Crabs.plist")
    }
    
    func saveToPersistentStore() {
        guard let url = self.persistentFileURL else {return}
        do {
            let encoder = PropertyListEncoder()
            let data = try encoder.encode(??)  //location of crab and other set ups - shouldRoll, shouldZoom, crabName
            try data.write(to: url)
        } catch {
            NSLog("error saving stars data: \(error)")
        }
    }
    
    func loadFromPersistentStore() {
        let fileManager = FileManager.default
        guard let url = persistentFileURL,
            fileManager.fileExists(atPath: url.path) else {return}
        do {
            let data = try Data(contentsOf: url)
            let decoder = PropertyListDecoder()
            ?? = try decoder.decode( ??, from: data)
        } catch {
            NSLog("Error loading stars data: \(error)")
        }

    }
 */

    func loadCrab() {
        guard let name = Settings.shared.crabName else {return}
        crab.loadTextures(named: name, forKey: SKSpriteNode.textureKey)
        crab.position = CGPoint(x: frame.midX, y: frame.midY)
        }
}
