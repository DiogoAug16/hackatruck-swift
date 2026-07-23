//
//  SecaoCardapioView.swift
//  DesafioTranslation
//
//  Created by Turma01-6 on 23/07/26.
//

import SwiftUI

struct SecaoCardapioView: View {
    
    let titulo: String
    let itens: [ItemCardapio]
    
    private let corAmarela = Color.backgroundAmarelo
    
    private let corAzul = Color.backgroundAzul
    
    var body: some View {
        VStack(spacing: 0) {
            
            Text(titulo)
                .font(.system(size: 20, weight: .bold))
                .frame(
                    maxWidth: .infinity,
                    alignment: .leading
                )
                .padding(.horizontal, 20)
                .padding(.vertical, 12)
                .background(corAmarela)
                .ignoresSafeArea()
            
            VStack(spacing: 14) {
                ForEach(itens) { item in
                    LinhaCardapioView(item: item)
                }
            }
            .padding(.horizontal, 20)
            .padding(.vertical, 16)
            .background(corAzul)
        }
    }
}

#Preview {
    SecaoCardapioView(
        titulo: "ENTRADA",
        itens: ItemCardapio.exemplos
    )
}
