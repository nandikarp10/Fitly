import SwiftUI

struct Recipes: View {
    
    var favorites: [String]
    var updateFavorites: (String, Bool) -> Void
    
    var isFavorite: Bool {
        favorites.contains("Banana Bread")
    }

    var isFavorite1: Bool {
        favorites.contains("Buddha Bowl")
    }
    

    var body: some View {
        NavigationStack {
            ZStack {
                Color(hue: 0.13, saturation: 0.109, brightness: 0.95)
                    .ignoresSafeArea()
                ScrollView {
                    VStack(alignment: .center) {
                        Text("Welcome to the Recipes Page!")
                            .font(.system(size: 40))
                            .fontWeight(.black)
                            .foregroundColor(.red)
                            .multilineTextAlignment(.center)
                            .frame(width: 400.0, height: 100.0)
                            .padding(.top, 50)

                        Text("Explore easy, healthy recipes and heart your favorites!")
                            .multilineTextAlignment(.center)
                            .padding(.top, 10)

                        Image("banana-bread")
                            .resizable()
                            .padding(.top, 40.0)
                            .frame(width: 200, height: 300)
                            .aspectRatio(contentMode: .fill)
                        

                        NavigationLink(destination: BananaBread()) {
                            Text("Banana Bread Recipe")
                                .foregroundColor(.red)
                                .multilineTextAlignment(.center)
                                .bold()
                                .font(.system(size: 20))
                        }

                        
                        Button(action: {
                            updateFavorites("Banana Bread", !isFavorite)
                        }) {
                            HStack {
                                Image(systemName: isFavorite ? "heart.fill" : "heart")
                                    .foregroundColor(.pink)
                                Text("Favorite")
                                    .foregroundColor(.pink)
                            }
                        }

                        Image("buddha-bowl")
                            .resizable()
                            .padding(.top, 20)
                            .frame(width: 200, height: 300)
                            .aspectRatio(contentMode: .fill)
                            .frame(maxWidth: .infinity, alignment: .center)
                        Text("Buddha Bowl Recipe")
                            .foregroundColor(Color.red)
                            .multilineTextAlignment(.center)
                            .bold()
                            .font(.system(size: 20))
                        
                        Button(action: {
                            updateFavorites("Buddha Bowl", !isFavorite1)
                        }) {
                            HStack {
                                Image(systemName: isFavorite1 ? "heart.fill" : "heart")
                                    .foregroundColor(.pink)
                                Text("Favorite")
                                    .foregroundColor(.pink)
                            }
                        }

                        

                        Spacer()
                    }
                    .frame(maxWidth: .infinity)
                }
            }
        }
    }
}

#Preview {
    Recipes(favorites: [], updateFavorites: { _, _ in })
}
