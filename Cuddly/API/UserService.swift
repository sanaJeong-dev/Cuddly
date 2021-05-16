//
//  UserService.swift
//  Cuddly
//
//  Created by Haru on 2021/05/16.
//

import Foundation
import Firebase

struct UserService {
    static let shared = UserService()
    
    func fetchUser(completion: @escaping(User) -> Void) {
        guard let uid = Auth.auth().currentUser?.uid else { print("DEBUG: no current user's uid"); return}
        
        // will user just one time
        REF_USERS.child(uid).observeSingleEvent(of: .value) { snapshot in
            guard let dictionary = snapshot.value as? [String: AnyObject] else {return}
            print("DEBUG: Dictionary is \(dictionary)")
            
            let user = User(uid: uid, dictionary: dictionary)
            
            print("DEBUG: Usename is \(user.username)")
            print("DEBUG: Email is \(user.email)")
            
            completion(user)
        }
    }
}
