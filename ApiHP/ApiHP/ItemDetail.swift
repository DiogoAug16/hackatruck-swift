//
//  ItemDetail.swift
//  ApiHP
//
//  Created by Turma01-6 on 15/07/26.
//

import SwiftUI

struct DetailRow: View {

    let title: String
    let value: String

    var body: some View {
        HStack(alignment: .top, spacing: 20) {
            Text(title)
                .fontWeight(.semibold)
                .foregroundStyle(Color.text)

            Spacer()

            Text(value)
                .foregroundStyle(.secondary)
                .multilineTextAlignment(.trailing)
        }
    }
}

struct ItemDetail: View {

    let personagem: HaPo

    var body: some View {
        ZStack {
            Color.background
                .ignoresSafeArea()

            ScrollView {
                VStack(spacing: 24) {
                    CharacterImage(
                        imageURL: personagem.image,
                        size: 180
                    )

                    VStack(spacing: 6) {
                        Text(valor(personagem.name))
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center)
                            .foregroundStyle(Color.text)

                        Text(valor(personagem.actor))
                            .font(.title3)
                            .foregroundStyle(.secondary)
                    }

                    VStack(spacing: 14) {
                        DetailRow(
                            title: "Casa",
                            value: valor(personagem.house)
                        )

                        Divider()

                        DetailRow(
                            title: "Espécie",
                            value: valor(personagem.species)
                        )

                        Divider()

                        DetailRow(
                            title: "Gênero",
                            value: valor(personagem.gender)
                        )

                        Divider()

                        DetailRow(
                            title: "Nascimento",
                            value: valor(personagem.dateOfBirth)
                        )

                        Divider()

                        DetailRow(
                            title: "Ancestralidade",
                            value: valor(personagem.ancestry)
                        )

                        Divider()

                        DetailRow(
                            title: "Cor dos olhos",
                            value: valor(personagem.eyeColour)
                        )

                        Divider()

                        DetailRow(
                            title: "Cor do cabelo",
                            value: valor(personagem.hairColour)
                        )

                        Divider()

                        DetailRow(
                            title: "Patrono",
                            value: valor(personagem.patronus)
                        )

                        Divider()

                        DetailRow(
                            title: "Estudante de Hogwarts",
                            value: simOuNao(personagem.hogwartsStudent)
                        )

                        Divider()

                        DetailRow(
                            title: "Funcionário de Hogwarts",
                            value: simOuNao(personagem.hogwartsStaff)
                        )

                        Divider()

                        DetailRow(
                            title: "Bruxo",
                            value: simOuNao(personagem.wizard)
                        )

                        Divider()

                        DetailRow(
                            title: "Está vivo",
                            value: simOuNao(personagem.alive)
                        )

                        Divider()

                        DetailRow(
                            title: "Varinha",
                            value: descricaoVarinha
                        )
                    }
                    .padding(20)
                    .background {
                        RoundedRectangle(cornerRadius: 24)
                            .fill(Color.listBackground)
                    }
                    .padding(.horizontal)
                }
                .padding(.vertical, 30)
            }
        }
        .navigationTitle(personagem.name ?? "Detalhes")
        .navigationBarTitleDisplayMode(.inline)
        .toolbarBackground(Color.background, for: .navigationBar)
        .toolbarBackground(.visible, for: .navigationBar)
    }

    private func valor(_ value: String?) -> String {
        guard let value,
              !value.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty
        else {
            return "Não informado"
        }

        return value
    }

    private func simOuNao(_ value: Bool?) -> String {
        guard let value else {
            return "Não informado"
        }

        return value ? "Sim" : "Não"
    }

    private var descricaoVarinha: String {
        var informacoes: [String] = []

        if let wood = personagem.wand.wood, !wood.isEmpty {
            informacoes.append("Madeira: \(wood)")
        }

        if let core = personagem.wand.core, !core.isEmpty {
            informacoes.append("Núcleo: \(core)")
        }

        if let length = personagem.wand.length {
            informacoes.append("Comprimento: \(length)")
        }

        if informacoes.isEmpty {
            return "Não informada"
        }

        return informacoes.joined(separator: " • ")
    }
}
