//
//  CinzaView.swift
//  tabview
//
//  Created by Turma01-6 on 10/07/26.
//

import SwiftUI

struct CinzaView: View {
    @State var cor: Color = Color.gray
    
    var body: some View {
        Image(systemName: "paintpalette")
            .font(.system(size: 250))
            .background(cor.frame(width: 500, height: 2000))
            .tabItem{
                Image(systemName: "paintpalette.fill")
                Text("Cinza")
            }
    }
}

#Preview {
    CinzaView()
}
