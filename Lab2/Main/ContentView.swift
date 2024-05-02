//
//  ContentView.swift
//  Lab2
//
//  Created by María Espejo
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel: ContentViewModel
    
    var body: some View {
        NavigationView {
            VStack {
                Button(action: {
                    viewModel.didTapFigureButton(imageName: "Triangle")
                }) {
                    FigureButton(imageName: "Triangle")
                }
                
                Button(action: {
                    viewModel.didTapFigureButton(imageName: "Rectangle")
                }) {
                    FigureButton(imageName: "Rectangle")
                }
                
                Button(action: {
                    viewModel.didTapFigureButton(imageName: "Hexagon")
                }) {
                    FigureButton(imageName: "Hexagon")
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
        let contentViewModel = ContentViewModel()
        ContentView(viewModel:contentViewModel)
    }
}

