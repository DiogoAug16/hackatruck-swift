//
//  ContentView.swift
//  DesafioZStack
//
//  Created by Turma01-6 on 17/07/26.
//

import SwiftUI

struct ContentView: View {
    @State private var alerta: Bool = false
    @State private var nome: String =  ""
    
    var body: some View {
        ZStack {
            Image("TruckBackground")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
                .blur(radius: 5, opaque: true)
            
            ZStack {
                
                Color.white
                    .ignoresSafeArea()
                    .opacity(0.75)
                
                ZStack {
                    VStack {
                        Text("Bem vindo,")
                            .foregroundColor(.black)
                            .font(.largeTitle)
                        
                        TextField("Digite seu nome aqui", text: $nome)
                            .font(.title3)
                            .frame(width: 200)
                            .multilineTextAlignment(.center)
                            
                                                
                        Spacer()
                        
                        VStack (spacing: -130){
                            
                            Image("MakerSpace")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 250, height: 250)
                                .shadow(radius: 50)
                            
                            Image("TruckForeground")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 250, height: 250)
                                .shadow(radius: 50)
                        }
                        
                        Spacer()
                        
                        Button("Entrar") {
                            alerta = true
                        }
                        .alert("ALERTA !", isPresented: $alerta) {
                            Button("Vamos lá!", role: .cancel) { }
                        } message: {
                            Text("Você irá iniciar o desafio da aula agora")
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
