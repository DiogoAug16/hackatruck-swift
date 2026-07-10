//
//  RosaView.swift
//  tabview
//
//  Created by Turma01-6 on 10/07/26.
//

import SwiftUI

struct RosaView: View {
    @State var cor: Color = Color.pink
    
    var body: some View {
        Image(systemName: "paintbrush")
            .font(.system(size: 250))
            .background(cor.frame(width: 500, height: 2000))
            .tabItem{
                Image(systemName: "paintbrush.fill")
                Text("Rosa")
            }
        }
}

#Preview {
    RosaView()
}
