//
//  TriangleViewModel.swift
//  Lab2
//
//  Created by María Espejo on 2/5/24.
//

import Foundation

class TriangleViewModel: PolygonViewModel {
    private let triangle: Triangle
    
    init(triangle: Triangle) {
        self.triangle = triangle
    }
    
    func calculateArea() {
        let area = triangle.area()
        print("Area of triangle: \(area)")
    }
}
