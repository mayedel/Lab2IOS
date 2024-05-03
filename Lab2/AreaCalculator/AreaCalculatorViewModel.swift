//
//  AreaCalculatorViewModel.swift
//  Lab2
//
//  Created by María Espejo on 2/5/24.
//

import Foundation

class AreaCalculatorViewModel:ObservableObject, PolygonObserver  {
    @Published var selectedPolygon: String?
    @Published var area: Double?
    @Published var description: String?
    private var base: Double?
    private var height: Double?
    
    init() {}
    
    func onAppear() {}
    
    //    private let polygonViewModelFactory: PolygonViewModelFactory
    //
    //    init(polygonViewModelFactory: PolygonViewModelFactory) {
    //        self.polygonViewModelFactory = polygonViewModelFactory
    //    }
    //
    
    func polygonSelected(_ polygon: String?) {
        self.selectedPolygon = polygon
    }
    
    func calculateArea(base: Double?, height: Double?){
        
    }
    //
    //    func createPolygonViewModel(type: String, parameters: [Double]) -> PolygonViewModel? {
    //        return polygonViewModelFactory.createViewModel(type: type, parameters: parameters)
    //    }
    
}
