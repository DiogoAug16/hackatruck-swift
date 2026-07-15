	//
//  ContentView.swift
//  ApiHP
//
//  Created by Turma01-6 on 15/07/26.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = ViewModel()
    @State var colorBG = Color.background
    @State var listBG = Color.listBackground
    @State var colorText = Color.text
    
    var body: some View {
        ZStack {
            colorBG
                .ignoresSafeArea()
            
            VStack {
                Image("Header")
                    .resizable()
                    .frame(width: 200,height: 200)
                
                NavigationStack() {
                    ScrollView {
                        ForEach(viewModel.personagens){ personagens in
                            HStack() {
                                AsyncImage(url: URL(string: personagens.image!)) { img in
                                    img.image?.resizable()
                                        .scaledToFill()
                                }
                                .frame(width: 80, height: 80)
                                .clipShape(Circle())
                                 
                                NavigationLink(destination: ItemDetail()){
                                    Text(personagens.name!)
                                        .foregroundStyle(colorText)
                                }
                                Spacer()
                            }
                            .font(.system(size: 30))
                            .padding()
                        }
                        .background(listBG)
                    }
                    
                }
                .onAppear() {
                    viewModel.fetch()
                }
                
            }
            
        }

    }
}

#Preview {
    ContentView()
}
