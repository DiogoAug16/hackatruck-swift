//
//  BotaoGrafico.swift
//  DesafioESP32
//
//  Created by Turma01-6 on 22/07/26.
//

import SwiftUI

struct BotaoGrafico: View {

    var body: some View {
        Image(systemName: "chart.xyaxis.line")
            .font(.system(size: 40))
            .foregroundColor(.blue)
            .frame(width: 80, height: 80)
            .background(Color.orange)
            .cornerRadius(15)
    }
}

#Preview {
    BotaoGrafico()
}

