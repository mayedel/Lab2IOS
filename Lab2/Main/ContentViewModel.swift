//
//  ContentViewModel.swift
//  Lab2
//
//  Created by María Espejo on 29/4/24.
//

import Foundation
import Combine

class ContentViewModel:ObservableObject {
    
    @Published var selectedPolygon: String?
    
    init(){}
    
    func didTapFigureButton(imageName: String) {
        selectedPolygon = imageName
    }
    
    
}


