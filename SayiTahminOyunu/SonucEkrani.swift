//
//  SonucEkrani.swift
//  SayiTahminOyunu
//
//  Created by Hakan Gül on 29/06/2023.
//

import SwiftUI

struct SonucEkrani: View {
    var sonucState = false
    
    var body: some View {
        VStack(spacing: 100){
            Text(sonucState ? "Kazandınız" : "Kaybettiniz")
                .font(.system(size: 36))
            Image(sonucState ? "mutlu" : "uzgun")
                .resizable()
                .frame(width: 128,height: 128)
                .scaledToFit()
        }
    }
}

struct SonucEkrani_Previews: PreviewProvider {
    static var previews: some View {
        SonucEkrani()
    }
}
