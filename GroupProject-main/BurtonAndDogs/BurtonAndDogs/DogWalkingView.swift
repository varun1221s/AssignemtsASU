//
//  DogWalkingView.swift
//  BurtonAndDogs
//
//  Created by Maria Fernanda Hernandez on 11/2/2565 BE.
//

import SwiftUI

public var walksPerWeek = 0
public var numDogs = 0
public var walkLength = 0

struct DogWalkingView: View {
    @State var walks = "Options"
    @State var dogs = "Options"
    @State var length = "Options"
   
    var body: some View {
     
        VStack {
            
            Text("Schedule Dog Walking").font(.largeTitle).foregroundColor(.green).multilineTextAlignment(.center).padding().position(x: 198, y: 120).bold()
            
            Text("Number of walks per week").foregroundColor(.green).bold().padding().font(.title2)
            Menu {
                Button(action: {
                    walks = "1 or 2 selected"
                    walksPerWeek = 1
                    service = "Dog Walking"
                }, label: {
                    Text("1 or 2")
                })
                Button(action: {
                    walks = "3 or 4 selected"
                    walksPerWeek = 3
                    service = "Dog Walking"
                }, label: {
                    Text("3 or 4")
                })
                Button(action: {
                    walks = "5 selected"
                    walksPerWeek = 5
                    service = "Dog Walking"
                }, label: {
                    Text("5")
                })
            } label: {
                Label(
                    title: {Text("\(walks)") },
                    icon: {Image(systemName: "plus")})
            }.padding()
            
            
            
            Text("Number of dogs").foregroundColor(.green).bold().padding().font(.title2)
            Menu {
                Button(action: {
                    dogs = "1 selected"
                    numDogs = 1
                    service = "Dog Walking"
                }, label: {
                    Text("1")
                })
                Button(action: {
                    dogs = "2 selected"
                    numDogs = 2
                    service = "Dog Walking"
                }, label: {
                    Text("2")
                })
                Button(action: {
                    dogs = "3 selected"
                    numDogs = 3
                    service = "Dog Walking"
                }, label: {
                    Text("3")
                })
                Button(action: {
                    dogs = "4+ selected"
                    numDogs = 4
                    service = "Dog Walking"
                }, label: {
                    Text("4+")
                })
            } label: {
                Label(
                    title: {Text("\(dogs)") },
                    icon: {Image(systemName: "plus")})
            }.padding()
            
            
            
            Text("Length of walk").foregroundColor(.green).bold().padding().font(.title2)
            Menu {
                Button(action: {
                    length = "15-minute potty break selected"
                    walkLength = 1
                    service = "Dog Walking"
                }, label: {
                    Text("15-minute potty break")
                })
                Button(action: {
                    length = "30 minutes selected"
                    walkLength = 2
                    service = "Dog Walking"
                }, label: {
                    Text("30 minutes")
                })
                Button(action: {
                    length = "45 minutes selected"
                    walkLength = 3
                    service = "Dog Walking"
                }, label: {
                    Text("45 minutes")
                })
                Button(action: {
                    length = "60 minutes selected"
                    walkLength = 4
                    service = "Dog Walking"
                }, label: {
                    Text("60 minutes")
                })
            } label: {
                Label(
                    title: {Text("\(length)") },
                    icon: {Image(systemName: "plus")})
            }.padding()
            
            
            
            Text("Your location").foregroundColor(.green).bold().padding().font(.title2)
            
            
            NavigationLink(destination: CartView()) {
                Text("Confirm").foregroundColor(.green).bold().font(.title)
            }.padding()
            
        }.position(x: 195, y: 290)
            .toolbar {
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    NavigationLink(destination: CartView()) {
                        Label("cart", systemImage: "cart")
                    }
                }
            }
    }
}

public var totalAmount = 15*walkLength+5*numDogs
public var service = ""

struct DogWalkingView_Previews: PreviewProvider {
    static var previews: some View {
        DogWalkingView()
    }
}
