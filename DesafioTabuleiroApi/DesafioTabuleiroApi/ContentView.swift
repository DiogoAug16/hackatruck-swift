//
//  ContentView.swift
//  DesafioTabuleiroApi
//
//  Created by Turma01-6 on 16/07/26.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = ViewModel()
    @State private var mostrarNovoJogo = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.red
                    .ignoresSafeArea()
                
                VStack() {
                    Image("Header")
                        .resizable()
                        .scaledToFill()
                        .ignoresSafeArea()
                    
                    Text("Jogos de tabuleiro")
                        .font(.largeTitle)
                        .foregroundStyle(Color.white)
                        .padding()
                    
                    ScrollView {
                        VStack {
                            ForEach(viewModel.tabuleiro) { jogo in
                                NavigationLink {
                                    DetalheJogoView(jogo: jogo)
                                } label: {
                                    HStack {
                                        Text(jogo.nome)
                                            .font(.largeTitle)
                                            .foregroundColor(.white)
                                        
                                        Spacer()
                                        
                                        Text("\(jogo.tempoDeJogo) min")
                                            .foregroundColor(.white)
                                            .font(.title3)
                                        
                                        Text("\(jogo.qtdJogadores) Jogadores")
                                            .foregroundColor(.white)
                                            .font(.title3)
                                        
                                    }
                                }
                                
                            }
                        }
                    }
                    
                    Button{
                        mostrarNovoJogo = true
                    } label: {
                        Text("Adicionar Novo Jogo")
                            .foregroundColor(.red)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(.white)
                            .cornerRadius(30)
                    }
                    .padding()
                    
                }
            }
            .sheet(isPresented: $mostrarNovoJogo) {
                NovoJogoView(viewModel: viewModel)
            }
            .onAppear() {
                viewModel.fetch()
            }
        }
    }
}

#Preview {
    ContentView()
}
