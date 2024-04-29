//
//  Circle.swift
//  Lab2
//
//  Created by María Espejo on 29/4/24.
//

import Foundation

class Circle: Figure {
    let radius: Double

    init(radius: Double) {
        self.radius = radius
        super.init(base: 0, height: 0)
    }

    override func area() -> Double {
        return Double.pi * radius * radius
    }
}
