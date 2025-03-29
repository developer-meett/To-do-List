//
//  MainViewViewModel.swift
//  To-do-List
//
//  Created by student on 28/03/25.
//
import FirebaseAuth
import Foundation
import SwiftUICore

class LoginViewViewModel:ObservableObject{
    @Published var email =  ""
    @Published var password =  ""
    @Published var errorMessage = ""
    
    init(){
        
    }
    func login(){
        errorMessage = ""
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty ,
        !password.trimmingCharacters(in: .whitespaces).isEmpty else{
            errorMessage = "Please enter email and password"
            return
        }
        guard email.contains("@") && email.contains(".") else{
            errorMessage = "Please enter valid email"
            return
        }

    }
        func validate(){
            
        }
    
}
 
