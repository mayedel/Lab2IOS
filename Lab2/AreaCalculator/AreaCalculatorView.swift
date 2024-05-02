//
//  AreaCalculatorView.swift
//  Lab2
//
//  Created by María Espejo on 29/4/24.
//

import SwiftUI

struct AreaCalculatorView: View {
    @StateObject var viewModel: AreaCalculatorViewModel?
    
    var body: some View {
        Text("Area Calculator")
            .font(.title)
            .padding()
    }
}

struct AreaCalculatorView_Previews: PreviewProvider {
    static var previews: some View {
        let areaCalculatorViewModel = AreaCalculatorViewModel()
        AreaCalculatorView(viewModel:areaCalculatorViewModel)
    }
}
