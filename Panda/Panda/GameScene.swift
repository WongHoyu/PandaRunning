//
//  GameScene.swift
//  Panda
//
//  Created by WongHoyu on 2018/5/31.
//  Copyright © 2018年 hwanghaoyu. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    lazy var panda = Panda()
    lazy var platformFactory = PlatformFactory()
    
    override func didMove(to view: SKView) {
        
        //场景的背景颜色  
        let skyColor = SKColor(red: 113/255, green: 197/255, blue: 207/255, alpha: 1)
        self.backgroundColor = skyColor
        //给熊猫定一个初始位置
        panda.position = CGPoint(x: -200, y: 0)
        //将熊猫显示在场景中
        self.addChild(panda)
        self.addChild(platformFactory)
        
        let platform = platformFactory.createPlatform(isRandom: false, midNum: 1, x: -250, y: -50)
    }
    
    

}
