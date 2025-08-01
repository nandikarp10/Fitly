import SwiftUI

struct workouts: View {
    var favorites: [String]
    var updateFavorites: (String, Bool) -> Void
    
    var isFavorite: Bool {
        favorites.contains("6 Week Muscle Building Workout for Women")
    }

    var isFavorite1: Bool {
        favorites.contains("15-Minute Core Conditioning Workout You Can Do Anywhere")
    }
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color(hue: 0.13, saturation: 0.109, brightness: 0.95)
                    .ignoresSafeArea()
                ScrollView {
                    VStack(alignment: .center) {
                        Text("Welcome to the Workouts Page!")
                            .font(.system(size: 40))
                            .fontWeight(.black)
                            .foregroundColor(.red)
                            .multilineTextAlignment(.center)
                            .frame(width: 400.0, height: 100.0)
                            .padding(.top, 50)

                        Text("Explore at home, adjustable workouts with Fitly!")
                            .multilineTextAlignment(.center)
                            .padding(.top, 10)

                        Image("ww")
                            .resizable()
                            .padding(.top, 40.0)
                            .frame(width: 400, height: 300)
                            .aspectRatio(contentMode: .fill)

                        NavigationLink(destination: womanWorkout()) {
                            Text("6 Week Muscle Building Workout for Women")
                                .foregroundColor(.red)
                                .multilineTextAlignment(.center)
                                .bold()
                                .font(.system(size: 20))
                        }
                        Button(action: {
                            updateFavorites("6 Week Muscle Building Workout for Women", !isFavorite)
                        }) {
                            HStack {
                                Image(systemName: isFavorite ? "heart.fill" : "heart")
                                    .foregroundColor(.pink)
                                Text("Favorite")
                                    .foregroundColor(.pink)
                            }
                        }

                        Image("men-workout")
                            .resizable()
                            .padding(.top, 20)
                            .frame(width: 400, height: 300)
                            .aspectRatio(contentMode: .fill)
                            .frame(maxWidth: .infinity, alignment: .center)
                        Text("15-Minute Core Conditioning Workout You Can Do Anywhere")
                            .foregroundColor(Color.red)
                            .multilineTextAlignment(.center)
                            .bold()
                            .font(.system(size: 20))
                        
                        Button(action: {
                            updateFavorites("15-Minute Core Conditioning Workout You Can Do Anywhere", !isFavorite1)
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
    workouts(favorites: [], updateFavorites: { _, _ in })
}
