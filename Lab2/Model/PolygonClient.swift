//
//  PolygonClient.swift
//  Lab2
//
//  Created by María Espejo on 2/5/24.
//

import Foundation

class PolygonClient {
    let factory: SimplePolygonFactory
    
    init(factory: SimplePolygonFactory) {
        self.factory = factory
    }
    
    func performOperation(type: String, parameters: [Double]) {
        guard let polygon = factory.createPolygon(type: type, parameters: parameters) else {
            print("Invalid polygon type or parameters")
            return
        }
        
        let viewModelFactory = PolygonViewModelFactory()
        guard let viewModel = viewModelFactory.createViewModel(polygon: polygon) else {
            print("Unable to create view model")
            return
        }
        
        viewModel.calculateArea()
    }
}
