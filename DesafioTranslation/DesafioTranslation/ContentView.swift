//
//  ContentView.swift
//  DesafioTranslation
//
//  Created by Turma01-6 on 23/07/26.
//

import SwiftUI

struct ContentView: View {
    
    private let backgroundTitulo = Color.backgroundAmarelo
    
    let entradas: [ItemCardapio] = [
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
    
    let principais: [ItemCardapio] = [
        ItemCardapio(
            id: 1,
            nome: "Risoto de camarão",
            preco: 72,
            imagem: "risoto"
        ),
        ItemCardapio(
            id: 2,
            nome: "Tortellini de queijo",
            preco: 69,
            imagem: "tortellini"
        ),
        ItemCardapio(
            id: 3,
            nome: "Bisteca com batatas",
            preco: 58,
            imagem: "bisteca"
        )
    ]
    
    let sobremesas: [ItemCardapio] = [
        ItemCardapio(
            id: 1,
            nome: "Pudim de leite condensado",
            preco: 35,
            imagem: "pudim"
        ),
        ItemCardapio(
            id: 2,
            nome: "Brownie de chocolate amargo",
            preco: 32,
            imagem: "brownie"
        ),
        ItemCardapio(
            id: 3,
            nome: "Torta de negresco",
            preco: 39,
            imagem: "torta"
        )
    ]
    
    let bebidas: [ItemCardapio] = [
        ItemCardapio(
            id: 1,
            nome: "Mojito",
            preco: 29,
            imagem: "mojito"
        ),
        ItemCardapio(
            id: 2,
            nome: "Suco de abacaxi",
            preco: 15,
            imagem: "suco"
        ),
        ItemCardapio(
            id: 3,
            nome: "Chá de hibisco",
            preco: 19,
            imagem: "cha"
        )
    ]
        
    private let corAmarela = Color.backgroundAmarelo
    
    var body: some View {
        ZStack {
            corAmarela
                .ignoresSafeArea()
            
            VStack(spacing: 0) {
                
                Text("HackaTruck GastroBar")
                    .font(.system(size: 30, weight: .heavy))
                    .frame(maxWidth: .infinity)
                    .padding(.top, 20)
                    .padding(.bottom, 18)
                    .background(backgroundTitulo)
                
                ScrollView {
                    VStack(spacing: 0) {
                        
                        SecaoCardapioView(
                            titulo: "ENTRADA",
                            itens: entradas
                        )
                        
                        SecaoCardapioView(
                            titulo: "PRINCIPAL",
                            itens: principais
                        )
                        
                        SecaoCardapioView(
                            titulo: "SOBREMESA",
                            itens: sobremesas
                        )
                        
                        SecaoCardapioView(
                            titulo: "BEBIDA",
                            itens: bebidas
                        )
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
