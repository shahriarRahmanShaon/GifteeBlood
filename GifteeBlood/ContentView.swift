//
//  ContentView.swift
//  GifteeBlood
//
//  Created by sergio shaon on 8/11/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            homeView()
            LaunchScreenAnimation()
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
}

struct homeView: View {
    var body: some View {
        VStack{
            HStack(alignment: .top, spacing: 0) {
                Image("doctor").resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 3))
                    .offset(x: 1, y: 1)
                Image("LoginImage").resizable().aspectRatio(contentMode: .fit)
            }
            Text("Login")
                .font(.largeTitle)
                .fontWeight(.semibold)
            Spacer()
            
        }
    }
}
