//
//  PaltformFactory.swift
//  Panda
//
//  Created by WongHoyu on 2018/6/1.
//  Copyright © 2018年 hwanghaoyu. All rights reserved.
//

import SpriteKit

class PlatformFactory: SKNode {
    //定义平台左边纹理
    let textyreLeft = SKTexture(imageNamed: "platform_l")
    //定义平台中间纹理
    let textureMid = SKTexture(imageNamed: "platform_m")
    //定义平台右边纹理
    let textureRight = SKTexture(imageNamed: "platform_r")
    
    //定义一个数组来储存组装后的平台
    var platforms = [Platform]()
    
    func createPlatform(isRandom:Bool,midNum:UInt32,x:CGFloat,y:CGFloat) -> Platform {
        //声明一个平台类，用来组装平台
        let platform = Platform()
        //生成平台的左边零件
        let platform_left = SKSpriteNode(texture: textyreLeft)
        //设置中心点
        platform_left.anchorPoint = CGPoint(x: 0, y: 0.9)
        //生成平台的右边零件
        let platform_right = SKSpriteNode(texture: textureRight)
        //设置中心点
        platform_right.anchorPoint = CGPoint(x: 0, y: 0.9)
        
        //声明一个数组来存放平台的零件
        var arrPlatform = [SKSpriteNode]()
        //将左边零件加入零件数组
        arrPlatform.append(platform_left)
        
        //根据传入的参数来决定要组装几个平台的中间零件
        //然后将中间的零件加入零件数组
        for _ in 1...midNum {
            let platform_mid = SKSpriteNode(texture: textureMid)
            platform_mid.anchorPoint = CGPoint(x: 0, y: 0.9)
            arrPlatform.append(platform_mid)
        }
        //将右边零件加入零件数组
        arrPlatform.append(platform_right)
        //将零件数据传入
        platform.onCreate(arrSprite: arrPlatform)
        platform.name = "platform"
        //设置平台的位置
        platform.position = CGPoint(x: x, y: y)
        //放到当前实例中
        self.addChild(platform)
        //讲评台加入平台数组
        platforms.append(platform)
        return platform
    }
}
