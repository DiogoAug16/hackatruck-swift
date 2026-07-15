//
//  test.swift
//  ApiHP
//
//  Created by Turma01-6 on 15/07/26.
//

import Foundation
import Combine

class ViewModel: ObservableObject {
    @Published var personagens: [HaPo] = []
    
    private let service = Service()
    private var cancellables = Set<AnyCancellable>()
    
    func fetch() {
        guard let url = URL(string: "https://hp-api.onrender.com/api/characters/house/gryffindor") else {
            return
        }
        
        service.fetchHaPo(url: url)
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: {_ in}) { personagens in
                self.personagens = personagens
            }
            .store(in: &cancellables)
    }
    
}
