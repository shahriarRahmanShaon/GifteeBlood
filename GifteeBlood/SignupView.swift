//
//  SignupView.swift
//  GifteeBlood
//
//  Created by sergio shaon on 28/1/21.
//

import SwiftUI

struct SignupView: View {
    @State var email : String = ""
    @State var password : String = ""
    @State var name : String = ""
    var body: some View {
        VStack {
            Image(systemName: "house")
                .font(.system(size: 100))
            Text("Welcome!")
                .font(.largeTitle)
            Spacer()
            VStack(alignment:.center, spacing: 15){
                Spacer()
                Text("SignUp")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                Spacer()
                TextField("Name", text: $name)
                    .padding()
                    .overlay(RoundedRectangle(cornerRadius: 20).stroke(lineWidth: 3))
                    .foregroundColor(name == "" ? .white : . black)
                    .opacity(0.7)
                
                
                TextField("Email", text: $email)
                    .padding()
                    .overlay(RoundedRectangle(cornerRadius: 20).stroke(lineWidth: 3))
                    .foregroundColor(email == "" ? .white : . black)
                    .opacity(0.8)
                
                SecureField("Password", text: $password)
                    .padding()
                    .overlay(RoundedRectangle(cornerRadius: 20).stroke(lineWidth: 3))
                    .foregroundColor(password == "" ? .white : . black)
                    .opacity(0.7)
                
                
                Button(action: {
                    
                }, label: {
                    Image(systemName: "arrow.forward.circle.fill")
                        .foregroundColor(.white)
                        .font(.system(size: 70))
                    
                })
                Spacer()
                
            }.padding()
            .background(Color.green)
            .cornerRadius(20)
            Spacer()
        }.padding()
        .navigationBarHidden(true)
        
        
    }
}

struct SignupView_Previews: PreviewProvider {
    static var previews: some View {
        SignupView()
    }
}
