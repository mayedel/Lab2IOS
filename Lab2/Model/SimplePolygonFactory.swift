//
//  SimplePolygonFactory.swift
//  Lab2
//
//  Created by María Espejo on 2/5/24.
//

import Foundation

class SimplePolygonFactory {
    func createPolygon(type: String, parameters: [Double]) -> Polygon? {
        switch type {
        case "Triangle":
            guard parameters.count == 2 else { return nil }
            return Triangle(base: parameters[0], height: parameters[1])
        case "Rectangle":
            guard parameters.count == 2 else { return nil }
            return Rectangle(base: parameters[0], height: parameters[1])
        case "Hexagon":
            guard parameters.count == 1 else { return nil }
            return Hexagon(sideLength: parameters[0])
        default:
            return nil
        }
    }
}
