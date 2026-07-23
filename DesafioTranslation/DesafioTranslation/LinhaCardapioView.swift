//
//  LinhaCardapioView.swift
//  DesafioTranslation
//
//  Created by Turma01-6 on 23/07/26.
//

import SwiftUI
import Translation

struct LinhaCardapioView: View {
    
    let item: ItemCardapio
    
    @State private var showTranslation = false
    
    var body: some View {
        HStack(spacing: 12) {
            
            Image(item.imagem)
                .resizable()
                .scaledToFill()
                .frame(width: 100, height: 100)
                .clipShape(
                    RoundedRectangle(cornerRadius: 10)
                )
            
            VStack(alignment: .leading, spacing: 4) {
                Text(item.nome)
                    .font(.system(size: 18))
                    .translationPresentation(isPresented: $showTranslation, text: item.nome)
                
                Text("R$ \(item.preco, specifier: "%.0f")")
                    .font(.system(size: 18))
                
            }
            
            Spacer()
            
            Button {
                showTranslation = true
            } label: {
                Image(systemName: "translate")
                    .font(.system(size: 22))
            }
            .buttonStyle(.plain)
            
        }
    }
}

#Preview {
    LinhaCardapioView(item: .exemplo)
        .padding()
}
