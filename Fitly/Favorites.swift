//
//  favorites.swift
//  Fitly
//
//  Created by Nandika P on 7/29/25.
//

import SwiftUI

struct Favorites: View {
    let favorites: [String]
    var body: some View {
        ZStack {
            Color(hue: 0.13, saturation: 0.109, brightness: 0.95)
                .ignoresSafeArea()
            VStack{
                Text("Your Favorites")
                    .font(.system(size: 40))
                    .fontWeight(.black)
                    .foregroundColor(.red)
                    .multilineTextAlignment(.center)
                    .frame(width: 400.0, height: 100.0)
                    .padding(.top, 50)
                Text("Find your favorite recipes and at-home workouts all in one place!")
                    .multilineTextAlignment(.center)
                    .padding(.top, 10)
                    .padding(.bottom, 50)
                
                if favorites.isEmpty {
                    Text("No favorites yet!")
                        .foregroundColor(.gray)
                } else {
                    ForEach(favorites, id: \.self) { recipe in
                        Text(recipe)
                            .foregroundColor(.red)
                            .multilineTextAlignment(.center)
                            .bold()
                            .font(.system(size: 20))
                    }
                }
                
                Spacer()
            }
        }
    }
}

#Preview {
    Favorites(favorites: ["Banana Bread", "Buddha Bowl"])
}
