//
//  ContentView.swift
//  SayiTahminOyunu
//
//  Created by Hakan Gül on 29/06/2023.
//

import SwiftUI

struct Anasayfa: View {
    @State private var tahminEkraniGecis = false
    var body: some View {
        NavigationStack {
            VStack(spacing: 100){
                Text("Tahmin Oyunu")
                    .font(.system(size: 36))
                Image("zar")
                    .resizable()
                    .frame(width: 128,height: 128)
                    .scaledToFit()
                
                Button("Oyuna Başla") {
                    tahminEkraniGecis.toggle()
                }
                .foregroundColor(.white)
                .frame(width: 250, height: 50)
                .background(.blue)
                .cornerRadius(10)
            }.navigationDestination(isPresented: $tahminEkraniGecis) {
                TahminEkrani()
            
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Anasayfa()
    }
}
