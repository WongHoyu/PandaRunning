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
    
    private var label : SKLabelNode?
    private var spinnyNode : SKShapeNode?
    lazy var panda = Panda()
    
    override func didMove(to view: SKView) {
        
        //场景的背景颜色  
        let skyColor = SKColor(red: 113/255, green: 197/255, blue: 207/255, alpha: 1)
        self.backgroundColor = skyColor
        //给熊猫定一个初始位置
        panda.position = CGPoint(x: -200, y: 0)
        //将熊猫显示在场景中
        self.addChild(panda)
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        //当熊猫状态为跑的时候播放跳的动作
        if panda.status == .run {
            panda.jump()
        } else if panda.status == .jump {
            //当状态为跳的时候执行打滚动画
            panda.roll()
        }
    }

}
