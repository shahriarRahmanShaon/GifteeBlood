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
            Text("Giftee Blood")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(Color("Logo"))
            VStack(alignment: .leading) {
                Text("Username")
                    .padding(.top ,20)
                VStack {
                    TextField("", text:self.$email)
                    Rectangle()
                        .fill(self.email == "" ? Color.black: Color.red.opacity (0.07) )
                        .frame(height: 3)
                }
                Text("password")
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
                }
                Spacer()
                Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                    Text("Sign In")
                        .foregroundColor(.white)
                        .font(.title2)
                        .fontWeight(.semibold)
                        .padding(.vertical)
                        .padding(.horizontal, 40)
                        .background(LinearGradient(gradient: Gradient(colors: [Color("gradientStart"),Color( "gradientEnd")]), startPoint: .leading, endPoint: .trailing) )
                    
                }.cornerRadius(10)
            }.padding()
            
            
            Spacer()
            
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
