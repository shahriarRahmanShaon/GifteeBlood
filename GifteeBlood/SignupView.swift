//
//  SignupView.swift
//  GifteeBlood
//
//  Created by sergio shaon on 28/1/21.
//
import FirebaseDatabase
import SwiftUI
import Firebase

struct SignupView: View {
    var ref : DatabaseReference = Database.database().reference()
    @State var email = ""
    @State var password = ""
    @State var name = ""
    @State var isLinkActive = false
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
                //MARK:- signup button management
                NavigationLink(
                    destination: HomeView(),
                    isActive: $isLinkActive,
                    label: {
                        Button(action: {
                            Auth.auth().createUser(withEmail: email, password: password) { (result, error) in
                                if error != nil {
                                    print(error?.localizedDescription as Any)
                                }else{
                                    let user = Auth.auth().currentUser
                                    let userData = ["userName": name,
                                                    "email": email,
                                                    "UserID": user?.uid]
                                    ref.child("UserDataCollection").child(user!.uid).setValue(userData)
                                    isLinkActive = true
                                }
                            }
                        }, label: {
                            Image(systemName: "arrow.forward.circle.fill")
                                .foregroundColor(.white)
                                .font(.system(size: 50))
                            
                        })
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
    
    
    
    struct SignupView_Previews: PreviewProvider {
        static var previews: some View {
            SignupView()
        }
    }
    
}
