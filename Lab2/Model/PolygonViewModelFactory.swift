//
//  PolygonViewModelFactory.swift
//  Lab2
//
//  Created by María Espejo on 2/5/24.
//

import Foundation

protocol PolygonViewModel {
    func calculateArea()
}

class PolygonViewModelFactory {
    func createViewModel(polygon: Polygon) -> PolygonViewModel? {
        if let rectangle = polygon as? Rectangle {
            return RectangleViewModel(rectangle: rectangle)
        } else if let triangle = polygon as? Triangle {
            return TriangleViewModel(triangle: triangle)
        } else if let hexagon = polygon as? Hexagon {
            return HexagonViewModel(hexagon: hexagon)
        } else {
            return nil
        }
    }
}
