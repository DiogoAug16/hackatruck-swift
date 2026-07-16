//
//  DetalheJogoView.swift
//  DesafioTabuleiroApi
//
//  Created by Turma01-6 on 16/07/26.
//

import SwiftUI

struct DetalheJogoView: View {
    let jogo: TabuleiroAPI
    
    var body: some View {
        ZStack {
            Color.white
                .ignoresSafeArea()
            
            VStack {
                
                Text(jogo.nome)
                    .font(.title2)
                    .foregroundColor(.red)
                    .padding()
                
                Spacer()
                
                HStack(spacing: 50) {
                    Text("\(jogo.qtdJogadores) Jogadores")
                    Text("\(jogo.tempoDeJogo) minutos")
                }
                .foregroundColor(.red)
                .font(.headline)
                
                Text(jogo.descricao)
                    .multilineTextAlignment(.center)
                    .padding()
                    .foregroundColor(.red)
                
                Spacer()
            }
        }
    }
}
