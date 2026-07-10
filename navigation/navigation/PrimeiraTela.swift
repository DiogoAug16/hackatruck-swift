//
//  PrimeiraTela.swift
//  navigation
//
//  Created by Turma01-6 on 10/07/26.
//

import SwiftUI

struct PrimeiraTela: View {
    @State var cor: Color = Color.red
    
    var body: some View {
        ZStack{
            cor.ignoresSafeArea()
            
            ZStack{
                Circle()
                    .frame(width: 300, height: 300)
                
                Image(systemName: "paintbrush")
                    .font(.system(size: 200))
                    .foregroundStyle(.red)
            }
        }
    }
}

#Preview {
    PrimeiraTela()
}
