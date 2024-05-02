//
//  AreaCalculatorViewModel.swift
//  Lab2
//
//  Created by María Espejo on 2/5/24.
//

import Foundation
import Combine

class AreaCalculatorViewModel:ObservableObject, PolygonObserver  {
    @Published var selectedPolygon: String?
    private let polygonViewModelFactory: PolygonViewModelFactory
    
    init(polygonViewModelFactory: PolygonViewModelFactory) {
        self.polygonViewModelFactory = polygonViewModelFactory
    }
    
    func polygonSelected(_ polygon: String?) {
        self.selectedPolygon = polygon
    }
    
    func createPolygonViewModel(type: String, parameters: [Double]) -> PolygonViewModel? {
        return polygonViewModelFactory.createViewModel(type: type, parameters: parameters)
    }
}
