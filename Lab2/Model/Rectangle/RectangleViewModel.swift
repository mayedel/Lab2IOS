//
//  RectangleViewModel.swift
//  Lab2
//
//  Created by María Espejo on 2/5/24.
//

import Foundation

class RectangleViewModel: PolygonViewModel {
    private let rectangle: Rectangle
    
    init(rectangle: Rectangle) {
        self.rectangle = rectangle
    }
    
    func calculateArea() {
        let area = rectangle.area()
        print("Area of rectangle: \(area)")
    }
}
