//
//  AzulView.swift
//  tabview
//
//  Created by Turma01-6 on 10/07/26.
//

import SwiftUI

struct AzulView: View {
    @State var cor: Color = Color.blue
    
    var body: some View {
        Image(systemName: "paintbrush.pointed")
            .font(.system(size: 250))
            .background(cor.frame(width: 500, height: 2000))
            .tabItem{
                Image(systemName: "paintbrush.pointed.fill")
                Text("Azul")
            }
    }
}

#Preview {
    AzulView()
}
