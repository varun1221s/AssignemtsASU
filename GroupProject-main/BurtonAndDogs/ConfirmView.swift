//
//  ConfirmView.swift
//  BnDTemp
//
//  Created by Maria Fernanda Hernandez on 11/30/2565 BE.
//

import SwiftUI

struct ConfirmView: View {
    var body: some View {
        
        
        Image("logo")
        
        Text("Your purchase has been placed! Thanks for trusting us with your pups!").foregroundColor(.green).bold().font(.title).padding()
        
        
        
        
    }
}

struct ConfirmView_Previews: PreviewProvider {
    static var previews: some View {
        ConfirmView()
    }
}
