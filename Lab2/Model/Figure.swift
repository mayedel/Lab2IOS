//
//  Figure.swift
//  Lab2
//
//  Created by María Espejo on 29/4/24.
//

import Foundation

class Figure {
    let base: Double
    let height: Double

    init(base: Double, height: Double) {
        self.base = base
        self.height = height
    }

    func area() -> Double {
        fatalError("Subclass must override area method")
    }
}

