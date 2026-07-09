//
//  ContentView.swift
//  iosApp
//
//  Created by Turma01-6 on 09/07/26.
//

import SwiftUI

struct ContentView: View {
    @State private var distancia: Float = 0
    @State private var tempo: Float = 0
    @State private var velocidade: Float = 0
    @State private var resultado: Float = 0
    
    func calcularVelocidade (distancia: Float, tempo: Float) -> Float {
        velocidade = distancia/tempo
        return velocidade
    }
    
    var body: some View {
        ZStack {
            Color.defaultBg.ignoresSafeArea()
            
            VStack{
                Text("**Digite a distancia (km)**").multilineTextAlignment(.center)
                TextField("", value: $distancia, format: .number).multilineTextAlignment(.center)
                    .textContentType(.oneTimeCode)
                    .frame(width: 200, height: 25)
                    .textFieldStyle(.roundedBorder)
                    .cornerRadius(35)
                    .keyboardType(.decimalPad)
                    .padding(-2)
                
                Text("**Digite o tempo (h)**").multilineTextAlignment(.center)
                TextField("", value: $tempo, format: .number).multilineTextAlignment(.center)
                    .textContentType(.oneTimeCode)
                    .frame(width: 200, height: 25)
                    .textFieldStyle(.roundedBorder)
                    .cornerRadius(35)
                    .keyboardType(.decimalPad)
                    .padding(-2)
                                
                Button(action: {
                    resultado = calcularVelocidade(distancia: distancia, tempo: tempo)
                }) {
                    Text("Calcular")
                        .font(.default)
                        .bold()
                        .foregroundColor(.green)
                        .padding()
                        .frame(maxWidth: 130, maxHeight: 50)
                        .background(Color.black)
                        .cornerRadius(15)
                }
                                
                HStack {
                    Text(resultado, format: .number.precision(.fractionLength(2)))
                        .font(.system(size: 50))
                    Text("km/h").font(.system(size: 50))
                    
                    if (resultado > 0 && resultado < 9.9) {
                        Color.primeiraVelocidade
                    }
                    
                }
                
                VStack {
                    Image("default_img")
                        .resizable()
                        .frame(width: 370, height: 370)
                        .padding(-10)
                }
                
                Spacer()
                                
                ZStack (){
                    Rectangle ()
                        .fill(Color.black)
                        .frame(width: 290, height: 160, alignment: .center)
                        .cornerRadius(13)
                    VStack (){
                        HStack() {
                            Spacer()
                            Text("TARTARUGA").foregroundColor(.white)
                            Spacer()
                            Text("(0 - 9.9km/h)").foregroundColor(.white)
                            Spacer()
                        }
                        
                        HStack (){
                            Spacer()
                            Text("ELEFANTE").foregroundColor(.white)
                            Spacer()
                            Text("(10 - 29.9km/h)").foregroundColor(.white)
                            Spacer()
                        }
                        
                        HStack (){
                            Spacer()
                            Text("AVESTRUZ").foregroundColor(.white)
                            Spacer()
                            Text("(30 - 69.9km/h)").foregroundColor(.white)
                            Spacer()
                        }
                        
                        HStack (){
                            Spacer()
                            Text("LEÃO").foregroundColor(.white)
                            Spacer()
                            Text("(70 - 89.9km/h)").foregroundColor(.white)
                            Spacer()
                        }
                        
                        HStack (){
                            Spacer()
                            Text("GUEPARDO").foregroundColor(.white)
                            Spacer()
                            Text("(90 - 130km/h)").foregroundColor(.white)
                            Spacer()
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
