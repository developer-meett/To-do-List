//
//  HeaderView.swift
//  To-do-List
//
//  Created by student on 28/03/25.
//

import SwiftUI

struct HeaderView: View {
    let title: String
    let subtitile: String
    let angle: Double
    let background: Color
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(background)
                .rotationEffect(Angle(degrees: angle))
            VStack{
                Text(title)
                    .font(.system(size: 50))
                    .foregroundColor(Color.white)
                    .bold()
                Text(subtitile)
                    .font(.system(size: 30))
                    .foregroundColor(Color.white)
            }
            .padding(.top,30)
        }
        .frame(width:  UIScreen.main.bounds.width * 3, height: 300)
        .offset(y: -100)
        Spacer()
            .ignoresSafeArea(.all)
    }
       
    
}

#Preview {
    HeaderView(title: "Title", subtitile: "Subtitle", angle: 15, background: .blue)
}
