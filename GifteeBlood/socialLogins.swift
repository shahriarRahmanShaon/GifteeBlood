//
//  socialLogins.swift
//  GifteeBlood
//
//  Created by sergio shaon on 1/2/21.
//

import SwiftUI

struct socialLogins: View {
    var body: some View {
        HStack(spacing: 25) {
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Image("google")
            })
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Image("facebook")
            })
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Image("twitter")
            })
        }
    }
}

struct socialLogins_Previews: PreviewProvider {
    static var previews: some View {
        socialLogins()
    }
}
