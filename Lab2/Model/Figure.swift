//
//  Figure.swift
//  Lab2
//
//  Created by María Espejo on 29/4/24.
//

import Foundation

class Figure {
    var base: Double
    var height: Double

    init(base: Double, height: Double) {
        self.base = base
        self.height = height
    }

    func area(base: Double, height: Double) -> Double {
        fatalError("Subclass must override area method")
    }
}

