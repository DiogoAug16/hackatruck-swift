//
//  Flow.swift
//  desafioTVHacka
//
//  Created by Turma01-6 on 13/07/26.
//

import SwiftUI

struct Flow: View {
    @State var corBackground: [Color] = [Color.white, Color.gray, Color.black]
    
    var body: some View {
        ZStack {
            LinearGradient(colors: corBackground, startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            
            VStack {
                
            }
            
        }
    }
}

#Preview {
    Flow()
}
