//
//  ItemDetail.swift
//  ApiHP
//
//  Created by Turma01-6 on 15/07/26.
//

import SwiftUI

struct ItemDetail: View {
    
    @StateObject var viewModel = ViewModel()
    
    var body: some View {
        
        let personagens = viewModel.personagens
        
        ZStack {
            Image("Header")
                .resizable()
                .blur(radius: 20)
                .scaledToFill()
                .frame(minWidth: 0)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                
            }
            .onAppear() {
                viewModel.fetch()
            }
        }
        
    }
}

#Preview {
    ItemDetail()
}
