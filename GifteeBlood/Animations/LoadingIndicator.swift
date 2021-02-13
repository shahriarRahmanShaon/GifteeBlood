//
//  LoadingIndicator.swift
//  GifteeBlood
//
//  Created by sergio shaon on 9/2/21.
//

import SwiftUI

struct LoadingIndicator: View {
    
    var body: some View {
        ZStack {
            Color(.systemTeal)
                .edgesIgnoringSafeArea(.all)
            ProgressView()
                .scaleEffect(5)
                .shadow(color: Color(#colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1)),
                    radius: 4.0, x: 1.0, y: 2.0)
        }
            
    }
}

struct LoadingIndicator_Previews: PreviewProvider {
    static var previews: some View {
        LoadingIndicator()
    }
}
