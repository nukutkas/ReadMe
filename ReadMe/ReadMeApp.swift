//
//  ReadMeApp.swift
//  ReadMe
//
//  Created by Татьяна Кочетова on 08.04.2022.
//

import SwiftUI

@main
struct ReadMeApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(Library())
        }
    }
}
