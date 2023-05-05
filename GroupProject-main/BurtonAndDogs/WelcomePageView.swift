//
//  WelcomePageView.swift
//  BurtonAndDogs
//
//  Created by Maria Fernanda Hernandez on 11/2/2565 BE.
//

import SwiftUI

struct WelcomePageView: View {
    var body: some View {
        NavigationView {
            VStack {
                    
                    Text("Welcome to Burton and Dogs").font(.largeTitle).foregroundColor(.green).multilineTextAlignment(.center)
                    Image("logo")
                    
                    NavigationLink(destination: DogWalkingView()) {
                        Text("Dog Walking").foregroundColor(.green).bold().font(.title)
                    }.padding()
                    
                    NavigationLink(destination: HouseSittingView()) {
                        Text("House Sitting").foregroundColor(.green).bold().font(.title)
                    }.padding()
                    
                }.padding()
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomePageView()
    }
}
