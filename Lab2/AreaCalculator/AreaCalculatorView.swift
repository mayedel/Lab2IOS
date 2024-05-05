//
//  AreaCalculatorView.swift
//  Lab2
//
//  Created by María Espejo on 29/4/24.
//

import SwiftUI

struct AreaCalculatorView: View {
    var selectedPolygon: String?
    @ObservedObject var viewModel: AreaCalculatorViewModel
    @State private var width: Double?
    @State private var height: Double?
    
    var body: some View {
        VStack {
            Text(selectedPolygon ?? "No polygon selected")
                .font(.title)
                .padding()
            
            TextField("Base", value: $width, formatter: NumberFormatter())
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            TextField("Altura", value: $height, formatter: NumberFormatter())
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            estiloBoton(action: calculateArea, label: "Calcular Área")
                .padding()
            
            if let area = viewModel.area, let description = viewModel.description {
                VStack {
                    Text("Area: \(area)")
                    Text("Descripción: \(description)")
                }
                .padding()
            }
        }
        .onAppear {
            viewModel.onAppear()
        }
    }
    
    struct estiloBoton: View {
        var action: () -> Void
        var label: String
        
        var body: some View {
            Button(action: action) {
                Text(label)
                    .padding()
            }
            .buttonStyle(BorderlessButtonStyle())
            .foregroundColor(.white)
            .background(Color.orange)
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(Color.gray, lineWidth: 2)
            )
        }
    }
    
    private func calculateArea() {
        viewModel.calculateArea(selectedPolygon:selectedPolygon, width: width, height: height)
    }
    
    struct AreaCalculatorView_Previews: PreviewProvider {
        static var previews: some View {
            let areaCalculatorViewModel = AreaCalculatorViewModel()
            let selectedPolygon = "Triangle"
            AreaCalculatorView(selectedPolygon: selectedPolygon, viewModel: areaCalculatorViewModel)
        }
    }
}
