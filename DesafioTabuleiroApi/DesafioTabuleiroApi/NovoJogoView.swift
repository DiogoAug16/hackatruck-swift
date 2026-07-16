//
//  NovoJogoView.swift
//  DesafioTabuleiroApi
//
//  Created by Turma01-6 on 16/07/26.
//

import SwiftUI

struct NovoJogoView: View {
    @Environment(\.dismiss) var dismiss
    
    @ObservedObject var viewModel: ViewModel
    
    @State private var nome = ""
    @State private var jogadores = ""
    @State private var tempo = ""
    @State private var descricao = ""
    
    var body: some View {
        VStack(spacing: 30) {
            
            Text("Novo Jogo")
                .font(.largeTitle)
                .foregroundColor(.red)
            
            Spacer()
            
            HStack {
                Text("Nome do Jogo:")
                TextField("Jogo da Vida", text: $nome)
            }
            
            HStack {
                Text("Qtd de Jogadores:")
                TextField("4", text: $jogadores)
                    .keyboardType(.numberPad)
            }
            
            HStack {
                Text("Tempo de Jogo:")
                TextField("30", text: $tempo)
                    .keyboardType(.numberPad)
            }
            
            HStack {
                Text("Descrição:")
                TextField("Jogo sobre...", text: $descricao)
            }
            
            
            Spacer()
            
            Button {
                viewModel.post(
                    nome: nome,
                    qtdJogadores: Int(jogadores) ?? 0,
                    tempoDeJogo: Int(tempo) ?? 0,
                    descricao: descricao
                )
                
                dismiss()
                
            } label: {
                Text("Criar Novo Jogo")
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.red)
                    .cornerRadius(30)
            }
        }
        .padding()
    }
}
