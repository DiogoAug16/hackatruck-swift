//
//  TabuleiroApi.swift
//  DesafioTabuleiroApi
//
//  Created by Turma01-6 on 16/07/26.
//

import Foundation

struct TabuleiroAPI: Codable, Identifiable {
    let id: String
    let rev: String?
    let nome: String
    let qtdJogadores: Int
    let tempoDeJogo: Int
    let descricao: String

    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case rev = "_rev"
        case nome
        case qtdJogadores
        case tempoDeJogo
        case descricao
    }
}

struct PostResponse: Codable {
    let ok: Bool
    let id: String
    let rev: String
}

struct NovoTabuleiro: Codable {
    let nome: String
    let qtdJogadores: Int
    let tempoDeJogo: Int
    let descricao: String
}
