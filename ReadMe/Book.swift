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
    var microReview: String
    var readMe: Bool

    init(
        title: String = "Title",
        author: String = "Author",
        microReview: String = "",
        readMe: Bool = true
    ) {
        self.title = title
        self.author = author
        self.microReview = microReview
        self.readMe = readMe
    }
}
 
