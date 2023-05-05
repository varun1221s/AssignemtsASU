//
//  CartView.swift
//  BurtonAndDogs
//
//  Created by Maria Fernanda Hernandez on 11/2/2565 BE.
//

import SwiftUI

struct CartView: View {
    var body: some View {
        
        Text("Shopping Cart").font(.largeTitle).foregroundColor(.green).multilineTextAlignment(.center).padding().position(x: 195, y: 40).bold()
        
        Text("You ordered: \(service)").font(.largeTitle).foregroundColor(.green).multilineTextAlignment(.center).padding().position(x: 195, y: 40).bold()
                
        Text("Total Order is: \(totalAmount)").font(.largeTitle).foregroundColor(.green).multilineTextAlignment(.center).padding().position(x: 195, y: 40).bold()
            
            
        NavigationLink(destination: ConfirmView()) {
            Text("Place Order").foregroundColor(.green).bold().font(.title)
        }.padding()
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
    }
}
