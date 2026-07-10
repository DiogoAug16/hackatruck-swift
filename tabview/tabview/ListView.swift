//
//  ListView.swift
//  tabview
//
//  Created by Turma01-6 on 10/07/26.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        List() {
            Section(header: Text("Lista").font(.system(size: 50))){
                HStack() {
                    Text("Rosa")
                    Spacer()
                    Image(systemName: "paintbrush")
                }
                
                HStack() {
                    Text("Azul")
                    Spacer()
                    Image(systemName: "paintbrush.pointed")
                }
                
                HStack() {
                    Text("Cinza")
                    Spacer()
                    Image(systemName: "paintpalette")
                }
            }
        
        }
        .tabItem{
            Image(systemName: "list.bullet")
            Text("Lista")
        }
    }
}

#Preview {
    ListView()
}
