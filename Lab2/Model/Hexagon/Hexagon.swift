//
//  Circle.swift
//  Lab2
//
//  Created by María Espejo on 29/4/24.
//

import Foundation

class Hexagon: Polygon {
    let sideLength: Double
       
   init(sideLength: Double) {
       self.sideLength = sideLength
   }
   
   func area() -> Double {
       return (3 * sqrt(3) * pow(sideLength, 2)) / 2
   }
    
}

