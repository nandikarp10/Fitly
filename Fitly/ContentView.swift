//
//  ContentView.swift
//  Fitly
//
//  Created by Nandika P on 7/29/25.
//

import SwiftUI

struct ContentView: View {
    @State private var favorites: [String] = []
    var body: some View {
        NavigationStack{
            ZStack{
                RadialGradient(
                                gradient: Gradient(colors: [Color(hue: 0.13, saturation: 0.109, brightness: 0.95),Color(red: 0.2, green: 0.4, blue: 0.6)]),
                                center: .center,
                                    startRadius: 65,
                                    endRadius: 500
                                )
                                .ignoresSafeArea()
        
                VStack {
                    
                    Image("home")
                        .resizable()
                        .padding(.top, 79.0)
                        .frame(width: 115, height: 215)
                        .font(.system(size: 20, weight: .bold, design: .serif))
                    
                    Text("Welcome to Fitly!")
                        .font(.system(size:40))
                        .fontWeight(.black)
                        .foregroundColor(Color.red)
                        .multilineTextAlignment(.center)
                        .bold()
                        .frame(width: 400.0, height: 100.0)
                    
                    Image("fitlyLogo")
                        .resizable()
                        .frame(width: 200.0, height: 190.0)
                    
                    
                    NavigationLink(destination:
                        Recipes(
                            favorites: favorites,
                            updateFavorites: { title, isAdding in
                                if isAdding {
                                    favorites.append(title)
                                } else {
                                    favorites.removeAll { $0 == title }
                                }
                            }
                        )
                    ) {
                        Text(" Recipes  ")
                            .font(.system(size:40))
                            .foregroundColor(Color.red)
                            .background(Color(hue: 0.13, saturation: 0.117, brightness: 0.918))
                            .bold()
                            .cornerRadius(15)
                            .padding(30)
                    }
                    NavigationLink(destination: workouts(favorites: favorites, updateFavorites: { item, add in
                        if add {
                            if !favorites.contains(item) {
                                favorites.append(item)
                            }
                        } else {
                            favorites.removeAll { $0 == item }
                        }
                    })) {
                        Text(" Workouts  ")
                            .font(.system(size:40))
                            .foregroundColor(Color.red)
                            .background(Color(hue: 0.13, saturation: 0.117, brightness: 0.918))
                            .bold()
                            .cornerRadius(15)
                        
                    }
                    NavigationLink(destination: Favorites(favorites: favorites)){
                        Text(" Favorites  ")
                            .font(.system(size:40))
                            .foregroundColor(Color.red)
                            .background(Color(hue: 0.13, saturation: 0.117, brightness: 0.918))
                            .bold()
                            .cornerRadius(15)
                        
                    }
                    
                    .padding()
                    Spacer()
                }
            }
            .background(Color(hue: 0.13, saturation: 0.109, brightness: 0.95))
            .ignoresSafeArea()
            
            
            .navigationTitle("Home")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarHidden(true)
        }
       
    }
}

#Preview {
    ContentView()
}
