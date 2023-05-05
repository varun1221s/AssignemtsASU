//
//  LoginView.swift
//  BurtonAndDogs
//
//  Created by Ivan Duarte on 11/16/22.
//

import SwiftUI
import Firebase

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var selection: Int? = nil
    @State private var userIsLoggedIn = false
    
    var body: some View {
        
        content
    }
    
    var content: some View {
            ZStack{
                Color.black
                RoundedRectangle(cornerRadius: 25, style: .continuous)
                    .foregroundStyle(.linearGradient(colors:[.white, .green], startPoint: .topLeading, endPoint: .bottomTrailing))
                
                VStack(spacing: 20){
                    Text("Welcome to Burton and Dogs!")
                        .foregroundColor(.black)
                        .font(.system(size: 40, weight: .bold, design: .rounded))
                        .offset(x:-10, y: -100)
                    //Email section --------------
                    TextField("Email", text: $email)
                        .foregroundColor(.black)
                        .textFieldStyle(.plain
                        )
                        .placeholder(when: email.isEmpty){
                            Text("Email")
                                .foregroundColor(.black)
                                .bold()
                        }
                    Rectangle()
                        .frame(width: 350, height: 1)
                    //Password section ------------
                    SecureField("Password", text: $password)
                        .foregroundColor(.black)
                        .textFieldStyle(.plain
                        )
                        .placeholder(when: email.isEmpty){
                            Text("Password")
                                .foregroundColor(.black)
                                .bold()
                        }
                    Rectangle()
                        .frame(width: 350, height: 1)
                    
                    NavigationLink(destination: WelcomePageView(), tag: 1, selection: $selection){
                        Button{
                            signout()
                            login()
                            Auth.auth().addStateDidChangeListener { auth, user in
                                if user != nil{
                                    print(user?.email)
                                    userIsLoggedIn.toggle()
                                    self.selection = 1
                                }
                            }
                            
                            
                        } label: {
                            Text("Log In")
                                .frame(width: 200, height: 40)
                                .bold()
                                .background(RoundedRectangle(cornerRadius: 10, style: .continuous)
                                    .fill(Color.green))
                                .foregroundColor(.black)

                        }
                    }
                    
//                    Button {
//                        login()
//
//                        Auth.auth().addStateDidChangeListener { auth, user in
//                            if user != nil{
//                                userIsLoggedIn.toggle()
//                                print("blah")
//                            }
//                        }
//                    } label: {
//                        Text("Log In")
//                            .frame(width: 200, height: 40)
//                            .bold()
//                            .background(RoundedRectangle(cornerRadius: 10, style: .continuous)
//                                .fill(Color.green))
//                            .foregroundColor(.black)
//
//                    }
                }
                .frame(width: 350)
            }
            .ignoresSafeArea()
}
    
    func signout(){
        do {
            try Auth.auth().signOut()
            print("signed out")
        }
        catch{
            print("no sign in")
        }
    }
    
    func login(){
        Auth.auth().signIn(withEmail: email, password: password) { result, error in
            if error != nil{
                print(error!.localizedDescription)
            }
        }
    }

}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
