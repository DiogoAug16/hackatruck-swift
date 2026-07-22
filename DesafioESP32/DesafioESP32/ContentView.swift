//
//  ContentView.swift
//  DesafioESP32
//
//  Created by Turma01-6 on 22/07/26.
//

import SwiftUI

func plantaEstado (umidade: Int) -> Image {
    
    if umidade > 50 {
        return Image("PlantaFeliz")
    } else {
        return Image("PlantaTriste")
    }
}

struct ContentView: View {
    @StateObject private var sensorVM = SensorViewModel()
    
    var body: some View {
        NavigationStack {
            VStack {
                plantaEstado(umidade: sensorVM.umidade)
                
                UmidadeView(umidade: sensorVM.umidade)
                
                MedidorCustom(porcentagem: sensorVM.umidade)
                
                NavigationLink {
                    GraficoView(valores: sensorVM.historico)
                } label: {
                    BotaoGrafico()
                }
            }
            .onAppear{
                sensorVM.conectar()
            }
            
        }
    }
    
    
}

#Preview {
    ContentView()
}
