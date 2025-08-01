import SwiftUI

struct BananaBread: View {
    let bananaBreadText = """
    • 2 very ripe bananas, mashed (1 cup)
    
    • ½ cup coconut sugar, or regular sugar
    
    • ¾ cup almond milk, or any milk
    
    • ⅓ cup extra-virgin olive oil, plus more for brushing
    
    • 1 teaspoon vanilla extract
    
    • 1 teaspoon apple cider vinegar
    
    • 1½ cups whole wheat pastry flour*, see note
    
    • ½ cup almond flour

    • ½ cup almond flour
    
    • 2 teaspoons baking powder
    
    • ¼ teaspoon baking soda
    """
    let bananaBreadText2 = """
            1. Preheat the oven to 350°F and brush a 9x5-inch loaf pan with olive oil.

            2. In a large bowl, combine the mashed bananas with the sugar, almond milk, olive oil, vanilla, and apple cider vinegar and whisk until combined.

            3. In a medium bowl, combine the flours, baking powder, baking soda, salt, cinnamon, and nutmeg.

            4. Add the dry ingredients to the bowl with the wet ingredients and stir until just combined, then fold in the walnuts.

            5. Pour the batter into the prepared pan and sprinkle with the chopped walnuts and oats.

            6. Bake for 42 to 50 minutes, or until a toothpick inserted in the middle comes out clean.

            7. Enjoy!
        """
    
    var body: some View {
        ZStack {
            Color(hue: 0.13, saturation: 0.109, brightness: 0.95)
                .ignoresSafeArea()

            ScrollView {
                VStack(alignment: .leading, spacing: 15) {
                    Text("                   Banana Bread")
                        .font(.title)
                        .foregroundColor(.red)
                        .multilineTextAlignment(.center)
                        .bold()
                    
                    Image("banana-bread")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 400, height: 300)
                        .clipped()
                    
                    Text("                                    Ingredients:")
                        .foregroundColor(Color.red)
                        .multilineTextAlignment(.center)
                        .bold()
                    Text(bananaBreadText)
                        .font(.body)
                        .foregroundColor(.black)
                        .padding()
                    Text("                                    Instructions:")
                        .foregroundColor(Color.red)
                        .multilineTextAlignment(.center)
                        .bold()
                    
                    Text(bananaBreadText2)
                        .font(.body)
                        .foregroundColor(.black)
                        .padding()
                    
                    Text ("Making this homemade banana bread costs about $4.50–$5.00 per whole loaf, compared to $8–$12+ for a bakery loaf. That’s less than $0.50 per slice versus $3–$6, saving you money while enjoying a healthier treat!")
                        .multilineTextAlignment(.center)
                        .font(.system(size:20))
                        .foregroundColor(Color.red)
                        .background(Color(hue: 0.525, saturation: 0.133, brightness: 0.953))
                        .bold()
                        .cornerRadius(10)
                        
                }
                .padding()
            }
        }
    }
}

#Preview {
    BananaBread()
}
