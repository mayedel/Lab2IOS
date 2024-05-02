//
//  HexagonViewModel.swift
//  Lab2
//
//  Created by María Espejo on 2/5/24.
//

import Foundation

class HexagonViewModel: PolygonViewModel {
    private let hexagon: Hexagon
    
    init(hexagon: Hexagon) {
        self.hexagon = hexagon
    }
    
    func calculateArea() {
        let area = hexagon.area()
        print("Area of hexagon: \(area)")
    }
}
