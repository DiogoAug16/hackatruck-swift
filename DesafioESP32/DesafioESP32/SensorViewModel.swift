//
//  SensorViewModel.swift
//  DesafioESP32
//
//  Created by Turma01-6 on 22/07/26.
//

import Foundation
import  Combine

class SensorViewModel: ObservableObject {
    @Published var umidade = 0
    @Published var historico: [Double] = []
    
    private var webSocketTask: URLSessionWebSocketTask?
    
    private func receber() {
        webSocketTask?.receive{[weak self] result in
        
            switch result {
            case .success(let message):
                switch message {
                case .string(let texto):
                    
                    if let data = texto.data(using: .utf8),
                        let json = try? JSONSerialization.jsonObject(with: data) as? [String: Any] {
                        
                        DispatchQueue.main.async {
                            let valor = json["umidade"] as? Int ?? 0
                            
                            self?.umidade = valor
                            
                            self?.historico.append(Double(valor))
                            
                            if self?.historico.count ?? 0 > 50 {
                                self?.historico.removeFirst()
                            }
                        }
                    }
                    
                default:
                    break
                    
                }
                
            case .failure(let erro):
                print(erro)
            }
            
            self?.receber()
            
        }
    }
    
    func conectar() {
        let url = URL(string: "ws://192.168.128.239:81")!
        
        webSocketTask = URLSession.shared.webSocketTask(with: url)
        
        webSocketTask?.resume()
        
        receber()
    }
}


