//
//  TLButton.swift
//  To-do-List
//
//  Created by student on 29/03/25.
//

import SwiftUI

struct TLButton: View {
    let title: String
    let background:Color
    let action: () -> Void
    var body: some View {
        
        Button{
            action()
        }label: {
            ZStack{
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(background)
                
                Text(title)
                    .foregroundColor(Color.white)
                    .bold()
            }
        }
        .frame(maxWidth: .infinity,maxHeight: 40)
        .padding()
    }
}
#Preview {
    TLButton(title: "Value", background: .pink){
        //acction
    }
}
