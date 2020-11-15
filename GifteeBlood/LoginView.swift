//
//  LoginView.swift
//  GifteeBlood
//
//  Created by sergio shaon on 12/11/20.
//

import SwiftUI
struct LoginView: View {
    @State var email = ""
    @State var pass = ""
    var body: some View {
        VStack{
            HStack(alignment: .top, spacing: 0) {
                Image("loginView").resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200)
                    .offset(x: 1, y: 1)
                Image("LoginImage").resizable().aspectRatio(contentMode: .fit)
            }
            HStack {
                Text("Giftee Blood !")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .foregroundColor(Color(.black))
                Spacer()
            }.padding()
            VStack(alignment: .leading) {
                Text("Username")
                    .padding(.top ,20)
                VStack {
                    TextField("", text:self.$email)
                    Rectangle()
                        .fill(self.email == "" ? Color.black: Color.red.opacity (0.07) )
                        .frame(height: 3)
                }
                Text("Password")
                    .padding(.top ,20)
                VStack {
                    TextField("", text:self.$pass)
                    Rectangle()
                        .fill(self.pass == "" ? Color.black: Color.red.opacity (0.07) )
                        .frame(height: 3)
                }
            }
            .padding(.horizontal)
            HStack{
                Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                    Text("Forgot Password?")
                        .foregroundColor(.black)
                }
                Spacer()
            }.padding()
            Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                Text("Sign In")
                    
                    .foregroundColor(.white)
                    .font(.title2)
                    .fontWeight(.semibold)
                    .padding(.vertical)
                    .padding(.horizontal, 40)
                    .frame(minWidth: 0, maxWidth: 330)
                    .background(Color("SignInButton"))
                    
                
            }.cornerRadius(10)
            Spacer()
            HStack{
                Rectangle()
                    .frame(width: 80, height: 5)
                    .padding()
                Text("Social Login")
                    .fontWeight(.semibold)
                Rectangle()
                    .frame(width: 80, height: 5)
                    .padding()
            }
            HStack{
                Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                    SocialMediaButton(imageName: "Fb-1")
                }
                Spacer()
                //google
                Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                    SocialMediaButton(imageName: "google")
                }
            }
            HStack{
                Text("Don't have an account?")
                Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                    Text("Sign up")
                }
            }.padding(.top)
            Spacer()
        }.padding()
    }
}
struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

struct SocialMediaButton: View {
    let imageName : String
    var body: some View {
        ZStack{
            Rectangle()
                
                .stroke(Color.black)
                .frame(width: 150, height: 50)
                
            Image("\(imageName)")
                .resizable()
                .frame(width: 80, height: 40)
                .padding(.horizontal)
            
        }
    }
}
