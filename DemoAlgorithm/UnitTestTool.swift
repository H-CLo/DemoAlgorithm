//
//  UnitTestTool.swift
//  DemoAlgorithm
//
//  Created by RD-WilleyLo on 2018/12/26.
//  Copyright © 2018 RD-WilleyLo. All rights reserved.
//

import Foundation

class UnitTestTool {
    
    static func generateRandom(count: Int) -> Array<Int> {
        var result = Array<Int>()
        for _ in 0..<count {
            result.append(Int.random(in: 0..<count))
        }
        return result
    }
}
