//
//  ContentView.swift
//  To-do-List
//
//  Created by student on 28/03/25.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        NavigationView{
            LoginView()
        }
        .padding()
    }
}

#Preview {
  MainView()
}
