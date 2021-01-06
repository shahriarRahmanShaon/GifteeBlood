//
//  LaunchScreenAnimation.swift
//  GifteeBlood
//
//  Created by sergio shaon on 11/11/20.
//

import SwiftUI

struct LaunchScreenAnimation: View {
    @State var animate = false
    @State var endAnimate = false
    var body: some View {
        ZStack{
            Color("bg")
            Image("LaunchScreen")
                .resizable()
                .renderingMode(.original)
                .aspectRatio(contentMode: animate ?.fill : .fit)
                .frame(width: animate ? nil : 300, height: animate ? nil : 300)
                .scaleEffect(animate ? 3:1)
        }.edgesIgnoringSafeArea(.all)
        .onAppear(perform: LaunchScreenAnimate)
        
        .opacity(endAnimate ? 0 : 1)
        .frame(width: UIScreen.main.bounds.width)
    }
    func LaunchScreenAnimate(){
        DispatchQueue.main.asyncAfter(deadline: .now()+0.25) {
            withAnimation(Animation.easeOut(duration: 0.50)){
                animate.toggle()
            }
            withAnimation(Animation.linear(duration: 0.50)){
                endAnimate.toggle()
            }
        }
        
    }
}

struct LaunchScreenAnimation_Previews: PreviewProvider {
    static var previews: some View {
        LaunchScreenAnimation()
    }
}
