//
//  HouseSittingView.swift
//  BurtonAndDogs
//
//  Created by Maria Fernanda Hernandez on 11/2/2565 BE.
//

import SwiftUI

struct HouseSittingView: View {
    
    @State var numNights = "Options"
    @State var numPets = "Options"
    
    var body: some View {
        
        VStack {
            
            Text("Schedule House Sitting").font(.largeTitle).foregroundColor(.green).multilineTextAlignment(.center).padding().position(x: 195, y: 120).bold()
            
            Text("Number of walks per week").foregroundColor(.green).bold().padding().font(.title2)
            Menu {
                Button(action: {
                    numNights = "1-9 selected"
                    walkLength = 5
                    service = "House Sitting"
                }, label: {
                    Text("1-9")
                })
                Button(action: {
                    walkLength = 10
                    numNights = "10+ selected"
                    service = "House Sitting"
                }, label: {
                    Text("10+ -$9")
                })
            } label: {
                Label(
                    title: {Text("\(numNights)") },
                    icon: {Image(systemName: "plus")})
            }.padding()
            
            
            
            Text("Number of dogs").foregroundColor(.green).bold().padding().font(.title2)
            Menu {
                Button(action: {
                    numPets = "1 or 2 selected"
                    numDogs = 1
                    service = "House Sitting"
                }, label: {
                    Text("1 or 2")
                })
                Button(action: {
                    numPets = "3 selected"
                    numDogs = 3
                    service = "House Sitting"
                }, label: {
                    Text("3")
                })
                Button(action: {
                    numPets = "4 selected"
                    numDogs = 4
                    service = "House Sitting"
                }, label: {
                    Text("4")
                })
                Button(action: {
                    numPets = "5+ selected"
                    numDogs = 5
                    service = "House Sitting"
                }, label: {
                    Text("5+")
                })
            } label: {
                Label(
                    title: {Text("\(numPets)") },
                    icon: {Image(systemName: "plus")})
            }.padding()
            
            Text("Your location").foregroundColor(.green).bold().padding().font(.title2)
            
            
            
            NavigationLink(destination: CartView()) {
                Text("Confirm").foregroundColor(.green).bold().font(.title)
            }.padding()
            
            
        }
        .position(x: 200, y: 300)
        .toolbar {
            ToolbarItemGroup(placement: .navigationBarTrailing) {
                NavigationLink(destination: CartView()) {
                    Label("cart", systemImage: "cart")
                    
                }
            }
        }
    
        
        
    }
}



struct HouseSittingView_Previews: PreviewProvider {
    static var previews: some View {
        HouseSittingView()
    }
}
