//
//  IWantToDonateView.swift
//  GifteeBlood
//
//  Created by sergio shaon on 21/2/21.
//

import SwiftUI

struct IWantToDonateView: View {
    var body: some View {
        NavigationView {
            VStack (alignment: .leading){
                Text("Please fillup the form ")
                    .font(.system(size: 20, weight: .semibold, design: Font.Design.monospaced))
                
            }
        }
    }
}


struct IWantToDonateView_Previews: PreviewProvider {
    static var previews: some View {
        IWantToDonateView()
    }
}
