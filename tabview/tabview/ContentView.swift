//
//  ContentView.swift
//  tabview
//
//  Created by Turma01-6 on 10/07/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            RosaView()
            AzulView()
            CinzaView()
            ListView()
        }
    }
}

#Preview {
    ContentView()
}
