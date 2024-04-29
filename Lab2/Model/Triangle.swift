//
//  Triangle.swift
//  Lab2
//
//  Created by María Espejo on 29/4/24.
//

import Foundation

class Triangle: Figure {
    override func area() -> Double {
        return (base * height) / 2
    }
}
