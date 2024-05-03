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
                //                FigureButton(imageName: "Triangle", action: {
                //                    viewModel.didTapFigureButton(imageName: "Triangle")
                //                })
                //
                //                FigureButton(imageName: "Rectangle", action: {
                //                    viewModel.didTapFigureButton(imageName: "Rectangle")
                //                })
                //
                //                FigureButton(imageName: "Hexagon", action: {
                //                    viewModel.didTapFigureButton(imageName: "Hexagon")
                //                })
                NavigationLink(
                    destination: AreaCalculatorView(viewModel: AreaCalculatorViewModel()),
                    tag: "Triangle",
                    selection: $viewModel.selectedPolygon) {
                        FigureButton(imageName: "Triangle"){
                            viewModel.didTapFigureButton(imageName: "Triangle")
                        }
                    }
                
                NavigationLink(
                    destination: AreaCalculatorView(viewModel: AreaCalculatorViewModel()),
                    tag: "Rectangle",
                    selection: $viewModel.selectedPolygon) {
                        FigureButton(imageName: "Rectangle"){
                            viewModel.didTapFigureButton(imageName: "Rectangle")
                        }
                    }
                
                NavigationLink(
                    destination: AreaCalculatorView(viewModel: AreaCalculatorViewModel()),
                    tag: "Hexagon",
                    selection: $viewModel.selectedPolygon) {
                        FigureButton(imageName: "Hexagon"){
                            viewModel.didTapFigureButton(imageName: "Hexagon")
                        }
                    }
            }
            .navigationTitle("Figures")
        }
    }
    
    //    private func FigureButton(imageName: String) -> some View {
    //        Image(imageName)
    //            .resizable()
    //            .aspectRatio(contentMode: .fit)
    //            .frame(width: 100, height: 100)
    //            .padding()
    //    }
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

