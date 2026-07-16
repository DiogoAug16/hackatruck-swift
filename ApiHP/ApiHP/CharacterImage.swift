//
//  CharacterImage.swift
//  ApiHP
//
//  Created by Turma01-6 on 15/07/26.
//

import SwiftUI

struct CharacterImage: View {

    let imageURL: String?
    let size: CGFloat

    var body: some View {
        AsyncImage(url: URL(string: imageURL ?? "")) { phase in
            switch phase {
            case .empty:
                ZStack {
                    Circle()
                        .fill(Color.gray.opacity(0.2))

                    ProgressView()
                }

            case .success(let image):
                image
                    .resizable()
                    .scaledToFill()

            case .failure:
                ZStack {
                    Circle()
                        .fill(Color.gray.opacity(0.2))

                    Image(systemName: "person.fill")
                        .font(.system(size: size * 0.4))
                        .foregroundStyle(.secondary)
                }

            @unknown default:
                EmptyView()
            }
        }
        .frame(width: size, height: size)
        .clipShape(Circle())
        .overlay {
            Circle()
                .stroke(Color.white.opacity(0.7), lineWidth: 3)
        }
    }
}