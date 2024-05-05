//
//  Circle.swift
//  Lab2
//
//  Created by María Espejo on 29/4/24.
//

import Foundation

class Hexagon: Figure {
    let width: Double
    let height: Double
       
   init(width: Double, height: Double) {
       self.width = width
       self.height = height
   }
   
   override func area() -> Double {
       return (3 * sqrt(3) / 2) * pow(width, 2)
   }
    
    override func description() -> String {
        return "El área de un hexágono se calcula multiplicando el perímetro del hexágono por su apotema y dividiendo el resultado por 2."
    }
    
}

