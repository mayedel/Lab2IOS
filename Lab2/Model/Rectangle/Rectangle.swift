//
//  Rectangle.swift
//  Lab2
//
//  Created by María Espejo on 29/4/24.
//

import Foundation

class Rectangle: Polygon {
    let base: Double
    let height: Double
    
    init(base: Double, height: Double) {
        self.base = base
        self.height = height
    }
    
    func area() -> Double {
        return base * height
    }
}
