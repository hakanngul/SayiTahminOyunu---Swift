//
//  TahminEkrani.swift
//  SayiTahminOyunu
//
//  Created by Hakan Gül on 29/06/2023.
//

import SwiftUI

struct TahminEkrani: View {
    @State private var sonucEkraniGecis = false
    @State private var kalanHak = 5
    @State private var yonlendirme = ""
    @State private var tfTahmin = ""
    @State private var randomNumber = 0
    @State private var sonuc = false
    
    var body: some View {
        VStack(spacing: 100) {
            Text("Kalan Hak: \(kalanHak)")
                .font(.system(size: 36)).foregroundColor(.red)
            
            
            Text("Yardım: \(yonlendirme)")
                .font(.system(size: 20)).foregroundColor(.black)
            
            TextField("Tahmin", text: $tfTahmin)
                .keyboardType(.numberPad)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            
            Button("Tahmin Et") {
                kalanHak -= 1
                if let tahmin = Int(tfTahmin) {
                    if tahmin == randomNumber {
                        sonucEkraniGecis = true
                        sonuc = true
                        return
                    }
                    if tahmin < randomNumber {
                        yonlendirme = "Arttır"
                    }
                    if tahmin > randomNumber {
                        yonlendirme = "Azalt"
                    }
                    
                    if kalanHak == 0 {
                        sonucEkraniGecis = true
                        sonuc = false
                    }
                }
                tfTahmin = ""
            }
            .foregroundColor(.white)
            .frame(width: 250, height: 50)
            .background(.blue)
            .cornerRadius(10)
        }.navigationDestination(isPresented: $sonucEkraniGecis) {
            SonucEkrani(sonucState: sonuc)
        
        }.onAppear(){
            randomNumber = Int.random(in: 0...100)
            kalanHak = 5
            tfTahmin = ""
            yonlendirme = ""
        }
    
    }
}

struct TahminEkrani_Previews: PreviewProvider {
    static var previews: some View {
        TahminEkrani()
    }
}
