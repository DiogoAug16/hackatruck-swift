//
//  TerceiraTela.swift
//  navigation
//
//  Created by Turma01-6 on 10/07/26.
//

import SwiftUI

struct TerceiraTela: View {
    @State var cor: Color = Color.gray
    
    var body: some View {
        ZStack{
            cor.ignoresSafeArea()
            
            ZStack{
                Circle()
                    .frame(width: 300, height: 300)
                
                Image(systemName: "paintpalette")
                    .font(.system(size: 200))
                    .foregroundStyle(.gray)
            }
        }
    }

}

#Preview {
    TerceiraTela()
}
