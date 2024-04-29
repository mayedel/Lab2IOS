//
//  ContentViewModel.swift
//  Lab2
//
//  Created by María Espejo on 29/4/24.
//

import Foundation

class ContentViewViewModel: ObservableObject {
    let figureType: FigureType
    
    init(figureType: FigureType) {
        self.figureType = figureType
    }
}
enum FigureType: String {
    case triangle = "Triangle"
    case rectangle = "Rectangle"
    case circle = "Circle"
}
