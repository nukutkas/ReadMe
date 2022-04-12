//
//  Book.swift
//  ReadMe
//
//  Created by Татьяна Кочетова on 08.04.2022.
//

import SwiftUI


struct Book: Hashable {
    let title: String
    let author: String

    init(title: String = "Title", author: String = "Author") {
        self.title = title
        self.author = author
    }
}
 
