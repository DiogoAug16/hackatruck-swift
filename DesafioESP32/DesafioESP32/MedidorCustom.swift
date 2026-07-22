//
//  MedidorCustom.swift
//  DesafioESP32
//
//  Created by Turma01-6 on 22/07/26.
//

import SwiftUI

struct MedidorCustom: View {

    let porcentagem: Int

    let largura: CGFloat = 240
    let altura: CGFloat = 300
    let margem: CGFloat = 18

    var body: some View {

        ZStack(alignment: .bottom) {

            RoundedRectangle(cornerRadius: 30)
                .fill(Color.white)

            RoundedRectangle(cornerRadius: 18)
                .fill(Color.blue)
                .frame(
                    width: largura - margem * 2,
                    height: (altura - margem * 2) * CGFloat(porcentagem) / 100
                )
                .padding(.bottom, margem)
                .animation(.easeInOut(duration: 0.5), value: porcentagem)
        }
        .frame(width: largura, height: altura)
        .overlay(
            RoundedRectangle(cornerRadius: 30)
                .stroke(.black, lineWidth: 6)
        )
    }
}


#Preview {
    MedidorCustom(porcentagem: 0)
}
