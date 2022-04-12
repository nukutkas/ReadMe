//
//  ContentView.swift
//  ReadMe
//
//  Created by Татьяна Кочетова on 08.04.2022.
//

import SwiftUI

struct ContentView: View {
    @State var library = Library()
    var body: some View {
        NavigationView {
            List(library.sortedBooks, id: \.self) { book in
                BookRow(book: book, image: $library.images[book])
            }
            .navigationTitle("My library")
        }
    }
}

struct BookRow: View {
    let book: Book
    @Binding var image: Image?
    
    var body: some View {
        NavigationLink(destination: DetailView(book: book, image: $image)) {
            HStack {
                Book.Image(title: book.title, size: 80)
                TitleAndAuthorStack(book: book, titleFont: .title2, authorFont: .title3)
                    .lineLimit(1)
            }
        }
        .padding(.vertical)
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}




