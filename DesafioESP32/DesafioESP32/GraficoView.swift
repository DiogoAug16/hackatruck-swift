//
//  GraficoView.swift
//  DesafioESP32
//
//  Created by Turma01-6 on 22/07/26.
//

import SwiftUI
import Charts

struct GraficoView: View {
    
    let valores: [Double]
    
    var body: some View {
        Chart {
            ForEach(Array(valores.enumerated()), id: \.offset) { i, valor in
                
                LineMark (x: .value("Tempo", i),
                          y: .value("Umidade", valor)
                )
                .foregroundStyle(.blue)
                .lineStyle(
                    StrokeStyle(lineWidth: 4)
                )
            }
        }
        .frame(height: 300)
        .padding()
        .navigationTitle("Historico")
    }
}

#Preview {
    GraficoView(valores: [10, 20, 15, 40, 35, 60, 25])
}
