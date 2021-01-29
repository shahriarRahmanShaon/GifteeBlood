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
                Spacer()
                Text("SignUp")
                    .font(.largeTitle)
                    .foregroundColor(.white)


                TextField("Email", text: $email)
                    .padding()
                    .overlay(RoundedRectangle(cornerRadius: 20).stroke(lineWidth: 3))
                    .foregroundColor(email == "" ? .white : . black)
                    .opacity(0.7)
                
                SecureField("Password", text: $password)
                    .padding()
                    .overlay(RoundedRectangle(cornerRadius: 20).stroke(lineWidth: 3))
                    .foregroundColor(password == "" ? .white : . black)
                    .opacity(0.7)
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
                .padding(.bottom)
                
                
                
                Button(action: {
                    
                }, label: {
                    Image(systemName: "arrow.forward.circle.fill")
                        .foregroundColor(.white)
                        .font(.system(size: 70))
                    
                })
                Spacer()
                
            }.padding()
            .background(Color(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1)))
            .cornerRadius(20)
            Spacer()
        }.padding()
        .navigationBarHidden(true)
        
        
}

struct loginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
}
