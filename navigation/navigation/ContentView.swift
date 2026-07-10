//
//  ContentView.swift
//  navigation
//
//  Created by Turma01-6 on 10/07/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack{
                HStack{
                    Text("Menu de Cores")
                        .font(.system(size: 40))
                        .bold()
                    Spacer()
                }.padding()
                
                Spacer()
                
                Text("Cores")
                HStack {
                    NavigationLink(destination: PrimeiraTela()) {
                        Image(systemName: "paintbrush")
                            .foregroundStyle(.white)
                            .frame(width: 140, height: 140)
                            .background(
                                RoundedRectangle(cornerRadius: 20, style: .continuous)
                                    .fill(.red)
                            )
                    }
                    .padding()
                    .font(.system(size: 100))
                    
                    
                    NavigationLink(destination: SegundaTela()) {
                        Image(systemName: "paintbrush.pointed")
                            .foregroundStyle(.white)
                            .frame(width: 140, height: 140)
                            .background(
                                RoundedRectangle(cornerRadius: 20, style: .continuous)
                                    .fill(.blue)
                            )
                    }
                    .padding()
                    .font(.system(size: 100))
                }
                
                HStack{
                    NavigationLink(destination: TerceiraTela()) {
                        Image(systemName: "paintpalette")
                            .foregroundStyle(.white)
                            .frame(width: 140, height: 140)
                            .background(
                                RoundedRectangle(cornerRadius: 20, style: .continuous)
                                    .fill(.gray)
                            )
                    }
                    .padding()
                    .font(.system(size: 100))
                    
                    NavigationLink(destination: QuartaTela()) {
                        Image(systemName: "list.bullet")
                            .foregroundStyle(.white)
                            .frame(width: 140, height: 140)
                            .background(
                                RoundedRectangle(cornerRadius: 20, style: .continuous)
                                    .fill(.purple)
                            )
                    }
                    .padding()
                    .font(.system(size: 100))
                    
                }
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}
