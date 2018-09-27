//
//  StorageReference+Post.swift
//  Makestagram
//
//  Created by Dhrumil Shah on 2017-07-19.
//  Copyright © 2017 Dhrumil Shah. All rights reserved.
//

import Foundation
import Foundation
import FirebaseStorage

extension StorageReference {
    static let dateFormatter = ISO8601DateFormatter()
    
    static func newPostImageReference() -> StorageReference {
        let uid = User.current.uid
        let timestamp = dateFormatter.string(from: Date())
        
        return Storage.storage().reference().child("images/posts/\(uid)/\(timestamp).jpg")
    }
}
