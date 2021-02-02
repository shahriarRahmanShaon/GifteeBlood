//
//  HomeView.swift
//  GifteeBlood
//
//  Created by sergio shaon on 4/1/21.
//https://blckbirds.com/post/how-to-show-a-swiftui-onboarding-screen-only-when-to-app-launches-for-the-first-time/
//https://www.appcoda.com/swiftui-tabview/

import SwiftUI

struct HomeView: View {
    @State var index = 0
    var body: some View {
        VStack{
            Spacer()
            CustomTabs(index:self.$index )
        }.background(Color.black.opacity(0.05)).edgesIgnoringSafeArea(.top)
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

//MARK:- making custom tabs
struct CustomTabs: View {
    @Binding var index : Int
    var body: some View{
        HStack{
            Button(action: {
                self.index = 0
            }, label: {
                ZStack {
                    Image(systemName: "doc.text.magnifyingglass")
                        .font(.system(size: 20))
                }
            }).foregroundColor(Color.blue.opacity(index == 0 ? 1 : 0.4))
            
            Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
            Button(action: {
                self.index = 1
            }, label: {
                Image(systemName: "text.badge.plus")
                    .font(.system(size: 20))
            }).foregroundColor(Color.blue.opacity(index == 1 ? 1 : 0.4))
            Spacer()
            
            Button(action: {
                
            }, label: {
                Image(systemName: "plus.circle.fill")
                    .foregroundColor(Color(#colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1)))
                    .font(.system(size: 60))
            }).offset(y : -30)
            
            Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
            Button(action: {
                self.index = 2
            }, label: {
                Image(systemName: "clock.arrow.circlepath")
                    .font(.system(size: 20))
            }).foregroundColor(Color.blue.opacity(index == 2 ? 1 : 0.4))
            
            Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
            Button(action: {
                self.index = 3
            }, label: {
                Image(systemName: "person")
                    .font(.system(size: 20))
            }).foregroundColor(Color.blue.opacity(index == 3 ? 1 : 0.4))
            
            
        }
        .padding(.leading)
        .padding(.trailing)
        .background(Color.white)
    }
}

//MARK:- shape for curving the view
struct cShape : Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: 30, y: 30))
        path.addLine(to: CGPoint(x: 30, y: 70))
        path.addLine(to: CGPoint(x: 70, y: 30))
        return path
    }
    
    
}
struct cShape_Previews: PreviewProvider {
    static var previews: some View {
        cShape()
    }
}



