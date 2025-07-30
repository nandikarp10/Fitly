//
//  favorites.swift
//  Fitly
//
//  Created by Nandika P on 7/29/25.
//

import SwiftUI

struct favorites: View {
    var body: some View {
        ZStack {
            Color(hue: 0.13, saturation: 0.109, brightness: 0.95)
                .ignoresSafeArea()
            VStack {
                Text("Welcome to the Favorites Page!")
                    .font(.system(size:40))
                    .fontWeight(.black)
                    .foregroundColor(Color.red)
                    .multilineTextAlignment(.center)
                    .bold()
                    .frame(width: 400.0, height: 100.0)
                    .padding(.top, 50)
                
                Text ("Find your favorite workouts and recipes all in one place!")
                    .multilineTextAlignment(.center)
                    .padding(.top,10)
                
                Spacer()
            }
            
        }
    }
}

#Preview {
    favorites()
}
