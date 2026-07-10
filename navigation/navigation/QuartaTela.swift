//
//  QuartaTela.swift
//  navigation
//
//  Created by Turma01-6 on 10/07/26.
//

import SwiftUI

struct QuartaTela: View {
    @State var cor: Color = Color.purple
    
    var body: some View {
        ZStack{
            cor.ignoresSafeArea()
            
            ZStack{
                Circle()
                    .frame(width: 300, height: 300)
                
                Image(systemName: "list.bullet")
                    .font(.system(size: 200))
                    .foregroundStyle(.purple)
            }
        }
    }

}

#Preview {
    QuartaTela()
}
