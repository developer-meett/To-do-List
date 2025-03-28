//
//  To_do_ListApp.swift
//  To-do-List
//
//  Created by student on 28/03/25.
//
import FirebaseCore
import SwiftUI

@main
struct To_do_ListApp: App {
    init(){
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
