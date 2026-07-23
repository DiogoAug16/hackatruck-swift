//
//  ItemCardapio.swift
//  DesafioTranslation
//
//  Created by Turma01-6 on 23/07/26.
//

import Foundation
import SwiftUI

struct ItemCardapio: Identifiable {
    let id: Int
    let nome: String
    let preco: Double
    let imagem: String
    
    static let exemplo = ItemCardapio(
        id: 1,
        nome: "Canapés de camarão",
        preco: 32,
        imagem: "canapes"
    )
    
    static let exemplos = [
        ItemCardapio(
            id: 1,
            nome: "Canapés de camarão",
            preco: 32,
            imagem: "canapes"
        ),
        ItemCardapio(
            id: 2,
            nome: "Carolinas de frango",
            preco: 35,
            imagem: "carolinas"
        ),
        ItemCardapio(
            id: 3,
            nome: "Quiches de espinafre",
            preco: 35,
            imagem: "quiches"
        )
    ]
}
