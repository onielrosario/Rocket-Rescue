//
//  Bundle-Decoding.swift
//  RocketRescue
//
//  Created by Oniel Rosario on 10/29/19.
//  Copyright © 2019 Oniel Rosario. All rights reserved.
//

import Foundation


extension Bundle {
    func decode<T: Decodable>(_ type: T.Type, from file: String) -> T {
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("falied to find filename \(file) in bundle")
        }
        guard let data = try? Data(contentsOf: url) else {
            fatalError("failed to load data")
        }
        guard let loaded = try? JSONDecoder().decode(T.self, from: data) else {
            fatalError("failed to decode data")
        }
        return loaded
    }
}
