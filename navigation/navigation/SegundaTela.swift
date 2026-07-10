//
//  SegundaTela.swift
//  navigation
//
//  Created by Turma01-6 on 10/07/26.
//

import SwiftUI

struct SegundaTela: View {
    @State var cor: Color = Color.blue
    
    var body: some View {
        ZStack{
            cor.ignoresSafeArea()
            
            ZStack{
                Circle()
                    .frame(width: 300, height: 300)
                
                Image(systemName: "paintbrush.pointed")
                    .font(.system(size: 200))
                    .foregroundStyle(.blue)
            }
        }
    }

}

#Preview {
    SegundaTela()
}
