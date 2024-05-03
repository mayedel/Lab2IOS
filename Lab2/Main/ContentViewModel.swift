//
//  ContentViewModel.swift
//  Lab2
//
//  Created by María Espejo on 29/4/24.
//

import Foundation

protocol PolygonObservable: AnyObject {
    func addObserver(_ observer: PolygonObserver)
    func removeObserver(_ observer: PolygonObserver)
    func notifyObserver()
}

protocol PolygonObserver: AnyObject {
    func polygonSelected(_ polygon: String?)
}

class ContentViewModel:ObservableObject, PolygonObservable {
    
    weak var observer: PolygonObserver?
    @Published var selectedPolygon: String?
    
    func didTapFigureButton(imageName: String) {
        selectedPolygon = imageName
        notifyObserver()
        print(selectedPolygon ?? "no hay nada")
    }
    
    func addObserver(_ observer: PolygonObserver) {
        self.observer = observer
    }
    
    func removeObserver(_ observer: PolygonObserver) {
        self.observer = nil
    }
    
    func notifyObserver() {
        observer?.polygonSelected(selectedPolygon)
    }
    
}

