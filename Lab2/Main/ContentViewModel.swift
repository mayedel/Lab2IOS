//
//  ContentViewModel.swift
//  Lab2
//
//  Created by María Espejo on 29/4/24.
//

import Foundation

protocol PolygonObserver: AnyObject {
    func polygonSelected(_ polygon: String?)
}

class ContentViewModel {
    
    weak var observer: PolygonObserver?
    @Published var selectedPolygon: String?
    
    func didTapFigureButton(imageName: String) {
        selectedPolygon = imageName
        notifyObserver()
    }
    
    func notifyObserver() {
        observer?.polygonSelected(selectedPolygon)
    }
   
    func navigateToAreaCalculatorView() -> AreaCalculatorView {
        return AreaCalculatorView()
    }
}

