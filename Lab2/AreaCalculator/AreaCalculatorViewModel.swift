//
//  AreaCalculatorViewModel.swift
//  Lab2
//
//  Created by María Espejo on 2/5/24.
//

import Foundation
import Combine

class AreaCalculatorViewModel:ObservableObject  {
    var selectedPolygon: String?
    @Published var area: Double?
    @Published var description: String?
    private var width: Double?
    private var height: Double?
    
    
    init() {}
    
    func onAppear() {}
    
    func calculateArea(selectedPolygon: String?, width: Double?, height: Double?) {
        guard let selectedPolygon = selectedPolygon else {
            return
        }
        
        switch selectedPolygon {
        case "Rectangle":
            guard let width = width, let height = height else {
                return
            }
            let rectangle = Rectangle(width: width, height: height)
            area = rectangle.area()
            description = rectangle.description()
        case "Triangle":
            guard let width = width, let height = height else {
                return
            }
            let triangle = Triangle(width: width, height: height)
            area = triangle.area()
            description = triangle.description()
        case "Hexagon":
            guard let width = width, let height = height else {
                return
            }
            let hexagon = Hexagon(width: width, height: height)
            area = hexagon.area()
            description = hexagon.description()
        default:
            area = nil
            description = nil
        }
    }

    
}
