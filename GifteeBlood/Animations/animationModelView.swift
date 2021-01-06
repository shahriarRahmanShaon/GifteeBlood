//
//  animationModelView.swift
//  GifteeBlood
//
//  Created by sergio shaon on 6/1/21.
//

import Lottie
import SwiftUI
struct animationModelView : UIViewRepresentable {
    typealias UIViewType = UIView
    let animationView = AnimationView()
    
    func makeUIView(context: UIViewRepresentableContext<animationModelView>) -> UIView {
        let view = UIView()
        
        let animation = Animation.named("pressure-pulse");
        animationView.animation = animation
        animationView.contentMode = .scaleAspectFit
        animationView.play()
        view.addSubview(animationView)
        
        animationView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            animationView.heightAnchor.constraint(equalTo: view.heightAnchor),
            animationView.widthAnchor.constraint(equalTo: view.widthAnchor)
        ])
        
        
        return view
    }
    
    func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<animationModelView>) {
        
    }
    
}
