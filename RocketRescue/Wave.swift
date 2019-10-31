//
//  Wave.swift
//  RocketRescue
//
//  Created by Oniel Rosario on 10/29/19.
//  Copyright © 2019 Oniel Rosario. All rights reserved.
//

import SpriteKit


struct Wave: Codable {
    struct WaveEnemy: Codable {
        let position: Int
        let xOffset: CGFloat
        let moveStraight: Bool
    }
    let name: String
    let enemies: [WaveEnemy]
}
