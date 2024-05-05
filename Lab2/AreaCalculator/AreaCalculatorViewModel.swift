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
    var area: Double?
    var description: String?
    private var width: Double?
    private var height: Double?
    
    
    init() {}
    
    func onAppear() {}
    
    func calculateArea(width: Double?, height: Double?){
        
    }
    
}
