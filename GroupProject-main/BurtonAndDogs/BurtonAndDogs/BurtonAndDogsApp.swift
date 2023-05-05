//
//  BurtonAndDogsApp.swift
//  BurtonAndDogs
//
//  Created by Maria Fernanda Hernandez on 11/2/2565 BE.
//

import SwiftUI
import Firebase

@main
struct BurtonAndDogsApp: App {
    init(){
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            SignupView()
        }
    }
}
