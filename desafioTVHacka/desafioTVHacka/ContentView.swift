//
//  ContentView.swift
//  desafioTVHacka
//
//  Created by Turma01-6 on 13/07/26.
//

import SwiftUI

struct Conteudo: Identifiable {
    let id: Int
    let categoria: String
    let nome: String
    let capa: String
    let ano: String
    let genero: String
    let pais: String
    let imdb: Double
}

struct ContentView: View {
    
    @State var arrayFilmes: [Conteudo] = [
        Conteudo(id: 1, categoria: "Filme", nome: "O Poderoso Chefão", capa: "https://upload.wikimedia.org/wikipedia/pt/d/de/Godfather_1972.jpg", ano: "2016", genero: "Terror", pais: "🇺🇸", imdb: 8.6),
        Conteudo(id: 2, categoria: "Filme", nome: "Flow", capa: "https://upload.wikimedia.org/wikipedia/en/2/2d/Flow_movie_poster.jpg", ano: "2024", genero: "Aventura", pais:"🇦🇹", imdb: 7.9),
        Conteudo(id: 3, categoria: "Filme", nome: "Parasita", capa: "https://upload.wikimedia.org/wikipedia/en/5/53/Parasite_%282019_film%29.png", ano: "2019", genero: "Aventura", pais:"🇦🇹", imdb: 7.9),
        Conteudo(id: 4, categoria: "Filme", nome: "Ainda Estou Aqui", capa: "https://upload.wikimedia.org/wikipedia/pt/5/57/Ainda_Estou_Aqui_2024_poster.jpg", ano: "2024", genero: "Aventura", pais:"🇦🇹", imdb: 7.9),
        Conteudo(id: 5, categoria: "Filme", nome: "Nada de Novo no Front", capa: "https://upload.wikimedia.org/wikipedia/pt/4/42/All_quiet_on_the_western_front_-_poster.jpg", ano: "2024", genero: "Aventura", pais:"🇦🇹", imdb: 7.9),
    ]
    
    @State var arraySeries: [Conteudo] = [
        Conteudo(id: 1, categoria: "Série", nome: "Stranger Things", capa: "https://upload.wikimedia.org/wikipedia/pt/2/29/Stranger_Things_Temporada_1_Poster.jpg", ano: "2016", genero: "Terror", pais: "🇺🇸", imdb: 8.6),
        Conteudo(id: 2, categoria: "Série", nome: "Flow", capa: "https://upload.wikimedia.org/wikipedia/en/2/2d/Flow_movie_poster.jpg", ano: "2024", genero: "Aventura", pais:"🇦🇹", imdb: 7.9),
        Conteudo(id: 3, categoria: "Série", nome: "Parasita", capa: "https://upload.wikimedia.org/wikipedia/en/5/53/Parasite_%282019_film%29.png", ano: "2019", genero: "Aventura", pais:"🇦🇹", imdb: 7.9),
        Conteudo(id: 4, categoria: "Série", nome: "Ainda Estou Aqui", capa: "https://upload.wikimedia.org/wikipedia/pt/5/57/Ainda_Estou_Aqui_2024_poster.jpg", ano: "2024", genero: "Aventura", pais:"🇦🇹", imdb: 7.9),
        Conteudo(id: 5, categoria: "Série", nome: "Nada de Novo no Front", capa: "https://upload.wikimedia.org/wikipedia/pt/4/42/All_quiet_on_the_western_front_-_poster.jpg", ano: "2024", genero: "Aventura", pais:"🇦🇹", imdb: 7.9),
    ]
    
    @State var arrayRecomendados: [Conteudo] = [
        Conteudo(id: 1, categoria: "Série", nome: "Stranger Things", capa: "https://upload.wikimedia.org/wikipedia/pt/2/29/Stranger_Things_Temporada_1_Poster.jpg", ano: "2016", genero: "Terror", pais: "🇺🇸", imdb: 8.6),
        Conteudo(id: 2, categoria: "Série", nome: "Flow", capa: "https://upload.wikimedia.org/wikipedia/en/2/2d/Flow_movie_poster.jpg", ano: "2024", genero: "Aventura", pais:"🇦🇹", imdb: 7.9),
        Conteudo(id: 3, categoria: "Série", nome: "Parasita", capa: "https://upload.wikimedia.org/wikipedia/en/5/53/Parasite_%282019_film%29.png", ano: "2019", genero: "Aventura", pais:"🇦🇹", imdb: 7.9),
        Conteudo(id: 4, categoria: "Série", nome: "Ainda Estou Aqui", capa: "https://upload.wikimedia.org/wikipedia/pt/5/57/Ainda_Estou_Aqui_2024_poster.jpg", ano: "2024", genero: "Aventura", pais:"🇦🇹", imdb: 7.9),
        Conteudo(id: 5, categoria: "Série", nome: "Nada de Novo no Front", capa: "https://upload.wikimedia.org/wikipedia/pt/4/42/All_quiet_on_the_western_front_-_poster.jpg", ano: "2024", genero: "Aventura", pais:"🇦🇹", imdb: 7.9),
    ]
    
    @State var corBackground: [Color] = [Color.white, Color.gray, Color.black]
    
    @State var corRetangulo: Color = Color.white
    
    var body: some View {
        
        ZStack {
            LinearGradient(colors: corBackground, startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            
            VStack {
                Image("HeaderIMG")

                NavigationStack {
                    ScrollView{
                        Section{
                            VStack {
                                ForEach(arrayFilmes) { conteudo in
                                    ZStack{
                                        RoundedRectangle(cornerRadius: 5).fill(corRetangulo)
                                            .frame(minWidth: 380, maxWidth: 380, minHeight: 72, maxHeight: 72)
                                            .shadow(radius: 15)
                                        
                                        HStack{
                                            Spacer()
                                            AsyncImage(url: URL(string: conteudo.capa), scale: 7)
                                            Text(conteudo.nome)
                                            Spacer().frame(minWidth: 140)
                                            Text(conteudo.pais).padding()
                                            Spacer()
                                        }
                                    }
                                }
                            }
                        } header: {
                            Text("Filmes")
                                .font(.title)
                                .bold()
                                .foregroundStyle(.black)
                        }
                        
                        Section{
                            VStack {
                                ForEach(arraySeries) { conteudo in
                                    ZStack{
                                        RoundedRectangle(cornerRadius: 5).fill(corRetangulo)
                                            .frame(minWidth: 380, maxWidth: 380, minHeight: 72, maxHeight: 72)
                                            .shadow(radius: 15)
                                        
                                        HStack{
                                            Spacer()
                                            AsyncImage(url: URL(string: conteudo.capa), scale: 7)
                                            Text(conteudo.nome)
                                            Spacer().frame(minWidth: 140)
                                            Text(conteudo.pais).padding()
                                            Spacer()
                                        }
                                    }
                                }
                            }
                        } header: {
                            Text("Séries")
                                .font(.title)
                                .bold()
                                .foregroundStyle(.black)
                        }
                        
                        ScrollView([.horizontal]) {
                            Section{
                                HStack {
                                    ForEach(arraySeries) { conteudo in
                                        ZStack{
                                            HStack{
                                                AsyncImage(url: URL(string: conteudo.capa), scale: 3)
                                                    .scaledToFill()

                                            }
                                        }
                                    }
                                }
                            } header: {
                                Text("Recomendados")
                                    .font(.title)
                                    .bold()
                                    .foregroundStyle(.black)
                            }
                            
                        }
                    }
                    
                }
            }
        }

    }
}

#Preview {
    ContentView()
}
