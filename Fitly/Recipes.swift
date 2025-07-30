import SwiftUI

struct Recipes: View {
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
                        .padding(.bottom, 40)

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

                        

                        Spacer()
                    }
                    .frame(maxWidth: .infinity)
                }
            }
        }
    }
}

#Preview {
    Recipes()
}
