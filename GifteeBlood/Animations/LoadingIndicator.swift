//
//  LoadingIndicator.swift
//  GifteeBlood
//
//  Created by sergio shaon on 9/2/21.
//

import SwiftUI

struct LoadingIndicator: View {
    var body: some View {
        ProgressView()
            .scaleEffect(5)
            .shadow(color: Color(#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)),
                    radius: 4.0, x: 1.0, y: 2.0)
            
    }
}

struct LoadingIndicator_Previews: PreviewProvider {
    static var previews: some View {
        LoadingIndicator()
    }
}
