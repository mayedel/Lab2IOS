//
//  ContentView.swift
//  Lab2
//
//  Created by María Espejo
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: AreaCalculatorView()) {
                    FigureButton(imageName: "Triangle")
                }
                
                NavigationLink(destination: AreaCalculatorView()) {
                    FigureButton(imageName: "Rectangle")
                }
                
                NavigationLink(destination: AreaCalculatorView()) {
                    FigureButton(imageName: "Circle")
                }
            }
            .navigationTitle("Figures")
        }
    }
    
    private func FigureButton(imageName: String) -> some View {
        Image(imageName)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 100, height: 100)
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

