//
//  RegisterView.swift
//  To-do-List
//
//  Created by student on 28/03/25.
//

import SwiftUI

struct RegisterView: View {
    @State var name: String = ""
    @State var email: String = ""
    @State var password: String = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                // Header
                HeaderView(title: "Register", subtitile: "Start organizing todos", angle: -15, background: .gray.opacity(0.9))
                    .ignoresSafeArea(edges: .top)
                
                // Form Section inside a Card
                VStack(spacing: 20) {
                    
                    TextField("Full Name", text: $name)
                        .textFieldStyle(PlainTextFieldStyle())
                        .padding()
                        .background(Color(.systemGray6))
                        .cornerRadius(8)
                    
                    TextField("Email Address", text: $email)
                        .textFieldStyle(PlainTextFieldStyle())
                        .padding()
                        .background(Color(.systemGray6))
                        .cornerRadius(8)
                    
                    SecureField("Password", text: $password)
                        .textFieldStyle(PlainTextFieldStyle())
                        .padding()
                        .background(Color(.systemGray6))
                        .cornerRadius(8)
                    
                    // Register Button
                    TLButton(title: "Create Account", background: .blue){
                        //action
                    }
                    
                }
                .padding()
                .background(Color.black.opacity(0.9))  // Dark card background
                .cornerRadius(12)
                .padding(.horizontal, 24)
                .padding(.top, 20)
                
                Spacer()
            }
            .background(Color(.systemGray6).ignoresSafeArea())
        }
    }
}

#Preview {
    RegisterView()
}
