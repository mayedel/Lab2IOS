//
//  Triangle.swift
//  Lab2
//
//  Created by María Espejo on 29/4/24.
//

import Foundation

class Triangle: Polygon {
    let base: Double
    let height: Double
    
    init(base: Double, height: Double) {
        self.base = base
        self.height = height
    }
    
    func area() -> Double {
        return 0.5 * base * height
    }
    
}
