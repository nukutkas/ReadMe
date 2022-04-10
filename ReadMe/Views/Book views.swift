//
//  Book views.swift
//  ReadMe
//
//  Created by Татьяна Кочетова on 08.04.2022.
//

import SwiftUI

struct TitleAndAuthorStack: View {
    let book: Book
    let titleFont: Font
    let authorFont: Font
    
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(book.title)
                .font(titleFont)
            Text(book.author)
                .font(authorFont)
                .foregroundColor(.secondary)
        }
    }
}

extension Book {
    struct Image: View {
        let title: String
        var size: CGFloat?
        
        var body: some View {
            let symbol =
            SwiftUI.Image(title: title)
            ?? .init(systemName: "book")
            
            symbol
                .resizable()
                .scaledToFit()
                .frame(width: size, height: size)
                .font(Font.title.weight(.light))
                .foregroundColor(.secondary.opacity(0.5))
        }
    }
}

extension Image {
    init?(title: String) {
        guard let character = title.first,
              case let symbolName = "\(character.lowercased()).square", UIImage(systemName: symbolName) != nil else {
            
            return nil
        }
        
        self.init(systemName: symbolName)
    }
}

struct Book_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            Book.Image(title: Book().title)
            Book.Image(title: "")
            Book.Image(title: "🏺")
        }
    }
}
