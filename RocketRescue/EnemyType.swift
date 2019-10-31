//
//  EnemyType.swift
//  RocketRescue
//
//  Created by Oniel Rosario on 10/29/19.
//  Copyright © 2019 Oniel Rosario. All rights reserved.
//

import SpriteKit


struct EnemyType: Codable {
    let name: String
    let shields: Int
    let speed: CGFloat
    let powerUpChance: Int
}
