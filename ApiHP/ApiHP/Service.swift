//
//  Service.swift
//  ApiHP
//
//  Created by Turma01-6 on 15/07/26.
//

import Foundation
import Combine

struct Service {
    func fetchHaPo(url: URL) -> AnyPublisher<[HaPo], Error> {
        return URLSession.shared.dataTaskPublisher(for: url)
            .map(\.data)
            .decode(type: [HaPo].self, decoder: JSONDecoder())
            .eraseToAnyPublisher()
    }
}
