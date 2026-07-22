//
//  UmidadeView.swift
//  DesafioESP32
//
//  Created by Turma01-6 on 22/07/26.
//

import SwiftUI

struct UmidadeView: View {
    let umidade: Int
    
    var body: some View {
        VStack {
            Text("\(umidade)%")
                .font(.system(size:40))
        }
    }
}

#Preview {
    UmidadeView(umidade: 0)
}
