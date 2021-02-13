//
//  FirebaseModel.swift
//  GifteeBlood
//
//  Created by sergio shaon on 13/2/21.
//
import Firebase
import FirebaseDatabase
import Foundation
class FirebaseModel: ObservableObject {
    var db = Database.database().reference()
    func addUserData(_ value: String) {
        do {
            try db.setValue(value)
        } catch  {
            print("unable to add data due to : \(error.localizedDescription)")
        }
    }
    
}
