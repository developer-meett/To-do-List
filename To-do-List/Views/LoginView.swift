//
//  LoginView.swift
//  To-do-List
//
//  Created by student on 28/03/25.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewViewModel()
    
    var body: some View {
        NavigationStack {
            VStack {
                // Header
                HeaderView(title: "To Do List", subtitile: "Get things Done", angle: 15, background: .blue)
                
                
                
                if  !viewModel.errorMessage.isEmpty {
                    Text(viewModel.errorMessage)
                       .foregroundColor(Color.red)
                }
                VStack {
                    TextField("Email", text: $viewModel.email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()
                        
                        .cornerRadius(8)
                    
                    SecureField("Password", text: $viewModel.password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()
                        
                        .cornerRadius(8)
                    
                    // Log In Button
                    TLButton(title: "Log In", background: .blue) {
                        viewModel.login()
                    }
                    .frame(maxWidth: .infinity, maxHeight: 50)
                    .cornerRadius(10)
                }
                
                .padding()
                .background(Color.white)
                .cornerRadius(12)
                .shadow(color: .gray.opacity(0.2), radius: 8, x: 0, y: 4)
                .padding(.horizontal, 24)
                .padding(.top, -300)
                
                // Footer Section
                VStack(spacing: 8) {
                    Text("New around here?")
                        .foregroundColor(.gray)
                    
                    NavigationLink("Create an Account", destination: RegisterView())
                        .foregroundColor(.blue)
                        .fontWeight(.bold)
                }
                .padding(.bottom, 30)
            }
            .background(Color(.systemGray6).ignoresSafeArea())
        }
    }
}

#Preview {
    LoginView()
}
