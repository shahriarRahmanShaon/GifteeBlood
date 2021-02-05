//
//  loginView.swift
//  GifteeBlood
//
//  Created by sergio shaon on 28/1/21.
//

import SwiftUI

struct LoginView: View {
    @State var email : String = ""
    @State var password : String = ""
    var body: some View {
        VStack {
            Image(systemName: "house")
                .font(.system(size: 100))
            Text("Welcome Back!")
                .font(.largeTitle)
            Spacer()
            VStack(alignment:.center, spacing: 25){
                Text("SignIn")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                
                
                ZStack(alignment: .leading) {
                    Text("Email")
                        .padding()
                        .font(.subheadline)
                        .opacity(email == "" ? 0.7 : 0.0)
                        .foregroundColor(.white)
                    TextField("", text: $email)
                        .padding()
                        .overlay(RoundedRectangle(cornerRadius: 20).stroke(lineWidth: 3))
                        .foregroundColor(email == "" ? .white : . black)
                        .opacity(0.8)
                }
                
                ZStack(alignment: .leading){
                    Text("Password")
                        .padding()
                        .font(.subheadline)
                        .opacity(password == "" ? 0.7 : 0.0)
                        .foregroundColor(.white)
                    SecureField("Password", text: $password)
                        .padding()
                        .overlay(RoundedRectangle(cornerRadius: 20).stroke(lineWidth: 3))
                        .foregroundColor(password == "" ? .white : . black)
                        .opacity(0.8)
                    
                }
                HStack{
                    Spacer()
                    Button(action: {
                        
                    }, label: {
                        Text("Forgot password ?")
                            .font(.subheadline)
                            .foregroundColor(.white)
                            .opacity(0.7)
                    })
                }.padding(.horizontal)
                
                NavigationLink(
                    destination: HomeView(),
                    label: {
                        Image(systemName: "arrow.forward.circle.fill")
                            .font(.system(size: 50))
                            .foregroundColor(.white)
                    })
                
            }.padding()
            .background(Color(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1)))
            .cornerRadius(20)
            Spacer(minLength: 3)
            socialLogins()
                .padding()
        }
        .padding()
        .navigationBarHidden(true)
    }
    
    
}

struct loginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
