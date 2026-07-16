	//
//  ContentView.swift
//  ApiHP
//
//  Created by Turma01-6 on 15/07/26.
//

import SwiftUI

struct ContentView: View {

    @StateObject private var viewModel = ViewModel()

    var body: some View {
        NavigationStack {
            ZStack {
                Color.background
                    .ignoresSafeArea()

                VStack(spacing: 0) {
                    Image("Header")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200, height: 200)

                    ScrollView {
                        LazyVStack(spacing: 12) {
                            ForEach(viewModel.personagens) { personagem in

                                NavigationLink {
                                    ItemDetail(personagem: personagem)
                                } label: {
                                    HStack(spacing: 16) {
                                        CharacterImage(
                                            imageURL: personagem.image,
                                            size: 80
                                        )

                                        VStack(alignment: .leading, spacing: 5) {
                                            Text(personagem.name ?? "Nome desconhecido")
                                                .font(.title3)
                                                .fontWeight(.semibold)
                                                .foregroundStyle(Color.text)

                                            Text(personagem.actor ?? "Ator não informado")
                                                .font(.subheadline)
                                 
                                                .foregroundStyle(.secondary)
                                        }

                                        Spacer()

                                        Image(systemName: "chevron.right")
                                            .foregroundStyle(.secondary)
                                    }
                                    .padding()
                                    .background {
                                        RoundedRectangle(cornerRadius: 18)
                                            .fill(Color.listBackground)
                                    }
                                }
                                .buttonStyle(.plain)
                            }
                        }
                        .padding(.horizontal)
                        .padding(.bottom)
                    }
                }
            }
            .toolbarBackground(Color.background, for: .navigationBar)
            .toolbarBackground(.visible, for: .navigationBar)
        }
        .task {
            if viewModel.personagens.isEmpty {
                viewModel.fetch()
            }
        }
    }
}

#Preview {
    ContentView()
}
