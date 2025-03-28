//
//  LoginView.swift
//  To-do-List
//
//  Created by student on 28/03/25.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        VStack{
            // header
            HeaderView()
            
            //login Form
            
            Form{
                TextField("Email", text: .constant(""))
                SecureField("Password",)
            }
        }
        
    }
}

#Preview {
    LoginView()
}
