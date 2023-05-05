//
//  SignupView.swift
//  BurtonAndDogs
//
//  Created by Ivan Duarte on 11/14/22.
//

import SwiftUI
import Firebase

struct SignupView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var userIsLoggedIn = false
    
    var body: some View {
        
        if userIsLoggedIn{
            //
        }
        else{
            
            content
        }
    }
    
    var content: some View {
        NavigationView {
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
                    
                    Button {
                        register()
                    } label: {
                        Text("Sign Up")
                            .frame(width: 200, height: 40)
                            .bold()
                            .background(RoundedRectangle(cornerRadius: 10, style: .continuous)
                                .fill(Color.green))
                            .foregroundColor(.black)
                    
                    }
                    
                    NavigationLink(destination: LoginView()){
                        Text("Have an account? Login!")
                    }
                }
                .frame(width: 350)
            }
            .ignoresSafeArea()
        }
    }
    
    func register(){
        Auth.auth().createUser(withEmail: email, password: password) { result , error in
            if error != nil {
                print(error!.localizedDescription)
            }
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

struct SignupView_Previews: PreviewProvider {
    static var previews: some View {
        SignupView()
    }
}

extension View {
    func placeholder<Content: View>(
        when shouldShow: Bool,
        alignment: Alignment = .leading,
        @ViewBuilder placeholder: () -> Content) -> some View {

        ZStack(alignment: alignment) {
            placeholder().opacity(shouldShow ? 1 : 0)
            self
        }
    }
}
