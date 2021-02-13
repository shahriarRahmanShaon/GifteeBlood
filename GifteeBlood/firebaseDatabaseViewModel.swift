//
//  firebaseDatabaseViewModel.swift
//  GifteeBlood
//
//  Created by sergio shaon on 13/2/21.
//
import FirebaseDatabase
import Foundation
import Firebase

class firebaseDatabaseViewModel: ObservableObject {
    @Published var firebaseModel = FirebaseModel()
    func add(_ value: String) {
        firebaseModel.addUserData(value)
    }
}
