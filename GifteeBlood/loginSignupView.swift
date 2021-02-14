//
//  loginSignupView.swift
//  GifteeBlood
//
//  Created by sergio shaon on 24/1/21.
//

import SwiftUI

struct loginSignupView: View {
    var body: some View {
        NavigationView {
            VStack {
                Spacer(minLength: 30)
                Text("Giftee Blood")
                    .font(.largeTitle)
                Text("Best place to find blood")
                Spacer()
                    .frame(minHeight: 50, maxHeight: 70)
                //MARK:- rectangle for signup
                HStack{
                    ZStack {
                        NavigationLink(destination: SignupView()){
                            RoundedRectangle(cornerRadius: 10 )
                                .frame(width: 150, height: 300, alignment: .top)
                                .foregroundColor(.green)
                        }.navigationBarHidden(true)
                        .edgesIgnoringSafeArea(.all)
                        .animation(.easeIn(duration: 1.0))
                        
                            VStack {
                                Text("Sign Up")
                                    .foregroundColor(.white).opacity(0.8)
                                Text("New here? Just sign up to gain access to this amazing app")
                                    .padding(20)
                                    .font(.subheadline)
                                    .foregroundColor(.white).opacity(0.9)
                                
                            }
                        }
            
                    Spacer(minLength: 50)
                    //MARK:- rectangle for login
                    ZStack {
                        NavigationLink(destination: LoginView()){
                            RoundedRectangle(cornerRadius: 10, style: .circular)
                                .frame(width: 200, height: 400, alignment: .top)
                                .foregroundColor(Color(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1)))
                        }.navigationBarHidden(true)
                        .animation(.easeIn(duration: 1.0))

                        VStack {
                            Text("Sign In")
                                .foregroundColor(.white).opacity(0.98)
                            Text("Returning? Sign in to resume what you're doing")
                                .padding(20)
                                .font(.subheadline)
                                .foregroundColor(.white).opacity(0.9)
                            
                        }.padding()
                    }
                }
                Spacer()
                    .frame(minHeight: 10, maxHeight: 100)
                //MARK:- social login section

                Spacer(minLength: 40)
            }
        }
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
}

struct loginSignupView_Previews: PreviewProvider {
    static var previews: some View {
        loginSignupView()
    }
}
