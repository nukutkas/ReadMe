//
//  ContentView.swift
//  ReadMe
//
//  Created by Татьяна Кочетова on 08.04.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Group {
            List(Library().sortedBooks, id: \.title) { book in
                BookRow(book: book)
            }
        }
    }
}

struct BookRow: View {
    let book: Book
    
    var body: some View {
        HStack {
            Book.Image(title: book.title)
            VStack(alignment: .leading) {
                Text(book.title)
                    .font(.title2)
                Text(book.author)
                    .font(.title3)
                    .foregroundColor(.secondary)
            }
            .lineLimit(1)
        }
        .padding(.vertical)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



