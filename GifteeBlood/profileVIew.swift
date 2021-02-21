//
//  profileVIew.swift
//  GifteeBlood
//
//  Created by sergio shaon on 12/2/21.
//

import SwiftUI
import FirebaseAuth
import Firebase

struct profileVIew: View {
    @State var isPresented :Bool = false
    @Binding var donateMode : Bool
    @State var ViewActive : Bool = false
    var body: some View {
        
        ZStack {
            (Color(#colorLiteral(red: 0.9476088881, green: 0.9720847011, blue: 1, alpha: 1)))
                .edgesIgnoringSafeArea(.all)
            VStack(alignment:.leading) {
                Text("Profile")
                    .font(.system(size: 30))
                    .fontWeight(.bold)
                
                HStack{
                    Image("loginView")
                        .resizable()
                        .renderingMode(.original)
                        .frame(width: 60, height: 60)
                        .background(Color(#colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1)))
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                    profileDetails(text1: "4", text2: "02 Jesha", text3: "Anytime")
                }
                Spacer()
                VStack {
                    Spacer()
                    Spacer()
                    ScrollView {
                        Spacer()
                        Spacer()
                        profileComponent( isPresented: $isPresented, donateMode: $donateMode, ViewActive: $ViewActive)
                    }.padding(10)
                }
                
            }
            .padding()
        }
    }
    
    
    
    struct profileVIew_Previews: PreviewProvider {
        static var previews: some View {
            profileVIew( donateMode: .constant(false))
        }
    }
    
    struct profileDetails: View {
        var text1 : String
        var text2 : String
        var text3 : String
        var body: some View {
            HStack(spacing : 0){
                Text("\(text1)")
                    .font(.system(size: 16))
                    .foregroundColor(.red).opacity(0.8)
                    .padding(23)
                    .background(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                Text("\(text2)")
                    .font(.system(size: 16))
                    .foregroundColor(.red).opacity(0.8)
                    .padding(23)
                    .background(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                Text("\(text3)")
                    .font(.system(size: 16))
                    .foregroundColor(.red).opacity(0.8)
                    .padding(23)
                    .background(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                
            }.cornerRadius(10)
            .shadow(radius: 10)
            
            
        }
    }
}

struct lazyVstackHstack: View {
    var imageName : String
    var text : String
    var body: some View {
        HStack(spacing:15) {
            Image(systemName: "\(imageName)")
                .foregroundColor(.red)
            Text("\(text)")
                .font(.system(size: 17))
                .fontWeight(.semibold)
        }
    }
}

struct profileComponent: View {
    @Binding var isPresented :Bool
    @Binding var donateMode : Bool
    @Binding var ViewActive : Bool
    
    var body: some View {
        LazyVStack(alignment : .leading, spacing: 40){
            Toggle(isOn:$donateMode , label: {
                lazyVstackHstack(imageName: Strings.profileLazyVstackComponents.imagename[0], text: Strings.profileLazyVstackComponents.texts[0])
            })
            .onChange(of: donateMode, perform: { value in
                if donateMode{
                    isPresented = true
                }else{
                    isPresented = false
                }
            })
            .toggleStyle(SwitchToggleStyle(tint: Color(#colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1))))
            .sheet(isPresented: $isPresented,onDismiss: {
                
            }, content: {
                IWantToDonateView()
            })
            
            
            lazyVstackHstack(imageName: Strings.profileLazyVstackComponents.imagename[1], text: Strings.profileLazyVstackComponents.texts[1])
            lazyVstackHstack(imageName: Strings.profileLazyVstackComponents.imagename[2], text: Strings.profileLazyVstackComponents.texts[2])
            lazyVstackHstack(imageName: Strings.profileLazyVstackComponents.imagename[3], text: Strings.profileLazyVstackComponents.texts[3])
            lazyVstackHstack(imageName: Strings.profileLazyVstackComponents.imagename[4], text: Strings.profileLazyVstackComponents.texts[4])
            
            
            //MARK:- logout button management
            
            NavigationLink(
                destination: loginSignupView(),
                isActive: $ViewActive,
                label: {
                    Button(action: {
                        do {
                            try Auth.auth().signOut()
                            self.ViewActive = true
                            print("done logout")
                        }
                        catch { print("already logged out") }
                        
                    }, label: {
                        lazyVstackHstack(imageName: Strings.profileLazyVstackComponents.imagename[5], text: Strings.profileLazyVstackComponents.texts[5])
                            .foregroundColor(.black)
                        
                    })
                })
            
        }
        
    }
    func isPresentedValue(donateMode: Bool, isPresented: Bool ) -> Bool {
        if donateMode {
            return isPresented == true
        }
        return false
    }
  
}
