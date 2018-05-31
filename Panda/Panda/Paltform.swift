//
//  Paltform.swift
//  Panda
//
//  Created by WongHoyu on 2018/6/1.
//  Copyright © 2018年 hwanghaoyu. All rights reserved.
//

import SpriteKit

class Platform:SKNode {
    //宽
    var width:CGFloat = 0.0
    //高
    var hright:CGFloat = 10.0
    
    func onCreate(arrSprite:[SKSpriteNode]) {
        //通过接受SKSpriteNode数组来创建平台
        for platform in arrSprite {
            //以当以前宽度为平台零件的x坐标
            platform.position.x = self.width
            //加载
            self.addChild(platform)
            //更新宽度
            self.width += platform.size.width
        }
    }
}
