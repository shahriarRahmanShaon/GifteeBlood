//
//  FindDonerView.swift
//  GifteeBlood
//
//  Created by sergio shaon on 5/2/21.
//

import SwiftUI

struct FindDonerView: View {

    @Binding var findDonerLocation : String
    @Binding var indexTab : Int
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("Find Doner")
                .font(.title).bold()
            Text("Search for blood doners around you")
                .font(.subheadline)
                .opacity(0.5)
            Spacer()
            Text("Choose blood group")
                .opacity(0.5)
            HStack(spacing : 0){
                Button(action: {
                    self.indexTab = 0
                }, label: {
                    Text("A+")
                        .foregroundColor(.black)
                    
                }).padding()
                .background(indexTab == 0 ? Color.white : Color(#colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1)) )
                .animation(.easeIn(duration: 0.5))
                Button(action: {
                    self.indexTab = 1
                }, label: {
                    Text("A+")
                        .foregroundColor(.black)
                    
                }).padding()
                .background(indexTab == 1 ? Color.white : Color(#colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1)) )
                .animation(.easeIn(duration: 0.5))
                Button(action: {
                    self.indexTab = 3
                }, label: {
                    Text("A+")
                        .foregroundColor(.black)
                    
                }).padding()
                .background(indexTab == 3 ? Color.white : Color(#colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1)) )
                .animation(.easeIn(duration: 0.5))
                Button(action: {
                    self.indexTab = 4
                }, label: {
                    Text("A+")
                        .foregroundColor(.black)
                    
                }).padding()
                .background(indexTab == 4 ? Color.white : Color(#colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1)) )
                .animation(.easeIn(duration: 0.5))
                Button(action: {
                    self.indexTab = 5
                }, label: {
                    Text("A+")
                        .foregroundColor(.black)
                    
                }).padding()
                .background(indexTab == 5 ? Color.white : Color(#colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1)) )
                .animation(.easeIn(duration: 0.5))
                Button(action: {
                    self.indexTab = 6
                }, label: {
                    Text("A+")
                        .foregroundColor(.black)
                    
                }).padding()
                .background(indexTab == 6 ? Color.white : Color(#colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1)) )
                .animation(.easeIn(duration: 0.5))
            }
            .cornerRadius(5)
            .padding(.vertical)
            .shadow(radius: 10 )
            Text("Location")
                .opacity(0.5)
                .padding(.vertical)
            ZStack(alignment: .leading) {
                Text("Location")
                    .font(.subheadline)
                    .opacity(findDonerLocation == "" ? 1 : 0.0)
                    .foregroundColor(.black)
                TextField("", text:$findDonerLocation)
                    .padding()
                    .cornerRadius(5)
                    .overlay(RoundedRectangle(cornerRadius: 0).stroke(lineWidth: 1.0))
                    .foregroundColor(findDonerLocation == "" ? .white : . black)
                    .opacity(1)
                    
            }
           
            .shadow(radius: 10)
            Button(action: {}, label: {
                Text(" Search doner")
                    .frame(minWidth:.zero, maxWidth: .infinity)
                    .padding()
                    .foregroundColor(.white)
                    .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
                    .background(Color(#colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1)))
                    .cornerRadius(10)
            })
            Spacer()
        }.padding()
    
        
    }
    
    struct FindDonerView_Previews: PreviewProvider {
        static var previews: some View {
            FindDonerView(findDonerLocation: .constant(""), indexTab: .constant(5))
        }
    }
}
