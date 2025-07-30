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
            
            Preheat the oven to 350°F and brush a 9x5-inch loaf pan with olive oil. In a large bowl, combine the mashed bananas with the sugar, almond milk, olive oil, vanilla, and apple cider vinegar and whisk until combined. In a medium bowl combine the flours, baking powder, baking soda, salt, cinnamon, and nutmeg. Add the dry ingredients to the bowl with the wet ingredients and stir until just combined, then fold in the walnuts. Pour into the prepared pan and sprinkle with the chopped walnuts and oats. Bake for 42 to 50 minutes, or until a toothpick inserted in the middle comes out clean.
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
                    Text("Many people spend around $3–$6 per slice when buying banana bread at coffee shops or bakeries—often packed with 350–550 calories, added sugar, refined flour, and fats—whereas making a healthier homemade version (using whole grain or nut flours, ripe bananas, minimal added sweetener, applesauce/oil substitutes, and portion control) typically cuts the calories to 150–250 per slice, reduces refined carbs and sugar by half or more, boosts fiber and nutrients, and allows full control over ingredients for a significantly healthier treat.")
                        .multilineTextAlignment(.center)
                }
                .padding()
            }
        }
    }
}

#Preview {
    BananaBread()
}
