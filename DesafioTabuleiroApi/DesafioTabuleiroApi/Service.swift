//
//  Service.swift
//  DesafioTabuleiroApi
//
//  Created by Turma01-6 on 16/07/26.
//

import Foundation
import Combine

struct Service {
    func fetchApi(url: URL) -> AnyPublisher<[TabuleiroAPI], Error> {
        return URLSession.shared.dataTaskPublisher(for: url)
            .map(\.data)
            .decode(type: [TabuleiroAPI].self, decoder: JSONDecoder())
            .eraseToAnyPublisher()
    }
    
    func postApi(url: URL, body: NovoTabuleiro) -> AnyPublisher<PostResponse, Error> {
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")

        do {
            request.httpBody = try JSONEncoder().encode(body)
        } catch {
            return Fail(error: error)
                .eraseToAnyPublisher()
        }

        return URLSession.shared.dataTaskPublisher(for: request)
            .map(\.data)
            .decode(type: PostResponse.self, decoder: JSONDecoder())
            .eraseToAnyPublisher()
    }
}
