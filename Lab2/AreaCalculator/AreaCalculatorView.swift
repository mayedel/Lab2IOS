//
//  AreaCalculatorView.swift
//  Lab2
//
//  Created by María Espejo on 29/4/24.
//

import SwiftUI

struct AreaCalculatorView: View {
    @ObservedObject var viewModel: AreaCalculatorViewModel
    @State private var base: Double?
    @State private var height: Double?
    
    var body: some View {
        VStack {
            Text(viewModel.selectedPolygon ?? "No polygon selected")
                .font(.title)
                .padding()
            
            TextField("Base", value: $base, formatter: NumberFormatter())
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            TextField("Altura", value: $height, formatter: NumberFormatter())
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            estiloBoton(action: calculateArea, label: "Calcular Área")
            .padding()
            
            if let area = viewModel.area, let description = viewModel.description {
                Text("Area: \(area)")
                Text("Descripción: \(description)")
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
        viewModel.calculateArea(base: base, height: height)
    }
    
    struct AreaCalculatorView_Previews: PreviewProvider {
        static var previews: some View {
            let areaCalculatorViewModel = AreaCalculatorViewModel()
            AreaCalculatorView(viewModel:areaCalculatorViewModel)
        }
    }
}
