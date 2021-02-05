//
//  FindDonerView.swift
//  GifteeBlood
//
//  Created by sergio shaon on 5/2/21.
//

import SwiftUI

struct FindDonerView: View {
    @State var findDonerLocation : String = ""
    var body: some View {
        VStack(alignment: .leading) {
            VStack(alignment: .leading) {
                Text("Find Doner")
                    .font(.title).bold()
                Text("Search for blood doners around you")
                    .font(.subheadline)
                    .opacity(0.5)
                Spacer()
                Text("Choose blood group")
                HStack(spacing : 0){
                    Button(action: {}, label: {
                        Text("A+")
                            .foregroundColor(.white)
                        
                    }).padding()
                    .background(Color(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1)))
                    Button(action: {}, label: {
                        Text("A+")
                            .foregroundColor(.white)
                        
                    }).padding()
                    .background(Color(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1)))
                    Button(action: {}, label: {
                        Text("A+")
                            .foregroundColor(.white)
                        
                    }).padding()
                    .background(Color(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1)))
                    Button(action: {}, label: {
                        Text("A+")
                            .foregroundColor(.white)
                        
                    }).padding()
                    .background(Color(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1)))
                    Button(action: {}, label: {
                        Text("A+")
                            .foregroundColor(.white)
                        
                    }).padding()
                    .background(Color(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1)))
                    Button(action: {}, label: {
                        Text("A+")
                            .foregroundColor(.white)
                        
                    }).padding()
                    .background(Color(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1)))
                }
                .padding(.vertical)
                Spacer()
                Text("Location")
                    .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
                ZStack (alignment: .leading){
                    Text("Enter your Location")
                        .padding()
                        .font(.subheadline)
                        .opacity(findDonerLocation == "" ? 0.5 : 0.0)
                        .foregroundColor(.black)
                    
                    TextField("", text: $findDonerLocation)
                        .padding()
                        .overlay(RoundedRectangle(cornerRadius: 20))
                        .foregroundColor(.black).opacity(0.05)
                }
                Spacer()
                Button(action: {}, label: {
                    Text(" Search doner")
                        .frame(minWidth:.zero, maxWidth: .infinity)
                        .padding()
                        .foregroundColor(.white)
                        .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
                        .background(Color(#colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1)))
                    
                })
            }


        }.padding()
        
    }
    
    
    struct FindDonerView_Previews: PreviewProvider {
        static var previews: some View {
            FindDonerView()
        }
    }
}
