//
//  ViewModel.swift
//  DesafioTabuleiroApi
//
//  Created by Turma01-6 on 16/07/26.
//

import Foundation
import Combine

class ViewModel: ObservableObject {
    @Published var tabuleiro: [TabuleiroAPI] = []
    
    private let service = Service()
    private var cancellables = Set<AnyCancellable>()
    
    func fetch() {
        guard let url = URL(string: "http://127.0.0.1:1880/pegar") else {
            return
        }
        
        service.fetchApi(url: url)
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: {_ in}) { tabuleiro in
                self.tabuleiro = tabuleiro
            }
            .store(in: &cancellables)
    }
    
    func post(nome: String, qtdJogadores: Int, tempoDeJogo: Int, descricao: String) {
        let novo = NovoTabuleiro(
            nome: nome,
            qtdJogadores: qtdJogadores,
            tempoDeJogo: tempoDeJogo,
            descricao: descricao
        )

        guard let url = URL(string: "http://127.0.0.1:1880/enviar") else {
            return
        }

        service.postApi(url: url, body: novo)
            .receive(on: DispatchQueue.main)
            .sink(
                receiveCompletion: { _ in },
                receiveValue: { _ in
                    self.fetch()
                }
            )
            .store(in: &cancellables)
    }
    
}
