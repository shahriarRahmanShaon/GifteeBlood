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
Spacer(minLength: 2)
                Text("SignUp")
                    .font(.largeTitle)
                    .foregroundColor(.white)

                ZStack(alignment: .leading) {
                    Text("Name")
                        .padding()
                        .font(.subheadline)
                        .opacity(name == "" ? 0.7 : 0.0)
                        .foregroundColor(.white)
                    TextField("", text: $name)
                        .padding()
                        .overlay(RoundedRectangle(cornerRadius: 20).stroke(lineWidth: 3))
                        .foregroundColor(name == "" ? .white : . black)
                        .opacity(0.8)

                }
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
                    SecureField("", text: $password)
                        .padding()
                        .overlay(RoundedRectangle(cornerRadius: 20).stroke(lineWidth: 3))
                        .foregroundColor(password == "" ? .white : . black)
                        .opacity(0.8)

                }
             
                Button(action: {
                    
                }, label: {
                    Image(systemName: "arrow.forward.circle.fill")
                        .foregroundColor(.white)
                        .font(.system(size: 50))
                    
                })
               
                Spacer()
            }.padding(.top)
            .padding(.trailing)
            .padding(.leading)
            .background(Color.green)
            .cornerRadius(20)
           
            Spacer(minLength: 3)
            socialLogins()
                .padding()
        }.padding()
        .navigationBarHidden(true)
  
    }
}

struct SignupView_Previews: PreviewProvider {
    static var previews: some View {
        SignupView()
    }
}
