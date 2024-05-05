//
//  ContentView.swift
//  Lab2
//
//  Created by María Espejo
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel: ContentViewModel
    
    var body: some View {
        NavigationView {
            VStack {
                FigureButton(imageName: "Triangle", action: {
                    viewModel.didTapFigureButton(imageName: "Triangle")
                })
                
                FigureButton(imageName: "Rectangle", action: {
                    viewModel.didTapFigureButton(imageName: "Rectangle")
                })
                
                FigureButton(imageName: "Hexagon", action: {
                    viewModel.didTapFigureButton(imageName: "Hexagon")
                })
                
                NavigationLink(destination: AreaCalculatorView(selectedPolygon: viewModel.selectedPolygon ?? "",viewModel: AreaCalculatorViewModel()),
                               isActive: Binding<Bool>(
                                get: { viewModel.selectedPolygon != nil },
                                set: { isActive in
                                    if !isActive {
                                        viewModel.selectedPolygon = nil
                                    } })
                ) {
                    EmptyView()
                }
            }
            .navigationTitle("Figures")
            .id(UUID()) 
        }
    }
    struct FigureButton: View {
        let imageName: String
        let action: () -> Void
        
        var body: some View {
            Button(action: action) {
                Image(imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 100)
                    .padding()
            }
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let contentViewModel = ContentViewModel()
        ContentView(viewModel:contentViewModel)
    }
}

