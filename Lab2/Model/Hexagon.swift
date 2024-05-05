//
//  Circle.swift
//  Lab2
//
//  Created by María Espejo on 29/4/24.
//

import Foundation

class Hexagon: Figure {
    let width: Double
       
   init(width: Double) {
       self.width = width
   }
   
   override func area() -> Double {
       return (3 * sqrt(3) * pow(width, 2)) / 2
   }
    
    override func description() -> String {
        return "El área se calcula"
    }
    
}

