//
//  Rectangle.swift
//  Lab2
//
//  Created by María Espejo on 29/4/24.
//

import Foundation

class Rectangle: Figure {
    let width: Double
    let height: Double
    
    init(width: Double, height: Double) {
        self.width = width
        self.height = height
    }
    
    override func area() -> Double {
        return width * height
    }
    
    override func description() -> String {
        return "El área de un rectángulo se calcula multiplicando su base por su altura."
    }
}
