require_relative './recipe'
require_relative './ingredient'
require_relative './source'

class Collection

  def self.sources
    [
    Source.new(id: 1, name: "Jeanette Oliphant", description: "My maternal grandmother.", image: nil),
    Source.new(id: 2, name: "May Gibler", description: "Close friend of my maternal grandomother Jeanette Oliphant.", image: nil),
    Source.new(id: 3, name: "Winifred Baum", decription: "My paternal grandmother.", image: nil)
    ]
  end
    
  def self.all
    [
    Recipe.new(
      id: 01,
      title: "Pineapple Cheese Salad",
      ingredients: [
        Ingredient.new(recipe_id: 01, measurement: 1.0, measurement_unit: "Package (3 ounce)", ingredient: "Lemon Jello", notes: nil),
        Ingredient.new(recipe_id: 01, measurement: 1.75, measurement_unit: "Cup", ingredient: "Water", notes: nil),
        Ingredient.new(recipe_id: 01, measurement: 1.0, measurement_unit: "Cup", ingredient: "Shredded Cheese", notes: nil),
        Ingredient.new(recipe_id: 01, measurement: 1.0, measurement_unit: "tbsp (heaping)", ingredient: "Mayonnaise", notes: nil),
        Ingredient.new(recipe_id: 01, measurement: 1.0, measurement_unit: "Cup", ingredient: "Crushed Pineapple, drained",notes: nil),
        Ingredient.new(recipe_id: 01, measurement: 1.0, measurement_unit: "Cup", ingredient: "Miniature Marshmallows",notes: nil),
        Ingredient.new(recipe_id: 01, measurement: 1.0, measurement_unit: "Cup", ingredient: "Whipped Cream", notes: nil),
        Ingredient.new(recipe_id: 01, measurement: 0.5, measurement_unit: "Cup", ingredient: "Pecans, chopped", notes: nil)
      ],
      directions: [
        "Dissolve together water and lemon jello. Place in refrigerator until almost set, then whip until foamy.",
        "Add remaining ingredients and refrigerate."],
      cooking_time: nil,
      source: self.sources[1],
      category: "Salads",
      notes: nil,
      image: "pineapple-cheese-salad.jpg"),

    Recipe.new(
      id: 02, 
      title: "Southern Biscuits", 
      directions: ["Mix all dry ingredients together and sift", "Cut in shortening", "Add egg and milk and stir together", "Knead", "Roll 1/2 inch thick", "Cut with biscuit cutter", "Bake 10-15 minutes in 450 degree oven."], 
      ingredients: [
        Ingredient.new(recipe_id: 02, measurement:2.0, measurement_unit:"Cup", ingredient:"Flour", notes:"Sifted"),
        Ingredient.new(recipe_id: 02, measurement:4.0, measurement_unit:"tsp", ingredient:"Cream of Tartar", notes:nil),
        Ingredient.new(recipe_id: 02, measurement:0.5, measurement_unit:"tsp", ingredient:"Salt", notes:nil),
        Ingredient.new(recipe_id: 02, measurement:2.0, measurement_unit:"tbsp", ingredient:"Sugar", notes:nil),
        Ingredient.new(recipe_id: 02, measurement:0.5, measurement_unit:"Cup", ingredient:"Shortening", notes: "Slightly less than 1/2 cup"),
        Ingredient.new(recipe_id: 02, measurement:1.0, measurement_unit: nil, ingredient:"Egg", notes: "Unbeaten"),
        Ingredient.new(recipe_id: 02, measurement:0.66, measurement_unit:"Cup", ingredient:"Milk", notes:nil) ],
      cooking_time: nil, 
      source: self.sources[0], 
      category: "Baked Goods", 
      notes: nil, 
      image: "southern-biscuits.jpg"),

    Recipe.new(
      id: 03, 
      title: "Mother’s Chocolate Cake", 
      directions: ["Cream sugar and Cisco", "Add eggs and beat well", "Combine sour milk and soda.", "Dissolve cocoa in hot water and add to milk and soda.", "Add flour and vanilla and stir together.", "Bake in two greased and floured 8 inch cake layer pans.", "Check for doneness with a toothpick."], 
      ingredients: [
        Ingredient.new(recipe_id: 03, measurement:1.5, measurement_unit:"Cup", ingredient:"Sugar", notes:nil),
        Ingredient.new(recipe_id: 03, measurement:0.5, measurement_unit:"Cup", ingredient:"Crisco", notes:nil),
        Ingredient.new(recipe_id: 03, measurement:2.0, measurement_unit:nil, ingredient:"Egg", notes:nil),
        Ingredient.new(recipe_id: 03, measurement:1.0, measurement_unit:"Cup", ingredient:"Sour Milk", notes:nil),
        Ingredient.new(recipe_id: 03, measurement:2.0, measurement_unit:"tbsp", ingredient:"Cocoa", notes:"Heaping"),
        Ingredient.new(recipe_id: 03, measurement:0.5, measurement_unit:"Cup", ingredient:"Hot Water", notes:nil),
        Ingredient.new(recipe_id: 03, measurement:2.0, measurement_unit:"Cup", ingredient:"Flour", notes:nil),
        Ingredient.new(recipe_id: 03, measurement:1.0, measurement_unit:"tsp", ingredient:"Soda", notes:nil),
        Ingredient.new(recipe_id: 03, measurement:1.0, measurement_unit:"tsp", ingredient:"Vanilla", notes:nil)],
      cooking_time: nil,
      source: self.sources[0], 
      category: "Baked Goods", 
      notes:"Emma Larson. This is a special cake!!", 
      image:"mothers-chocolate-cake.jpg"),

    Recipe.new(
      id: 04, 
      title:"Fruit Cocktail Cake",
      directions: ["Mix all together", "Bake in 9 x 13 pan at 350 degrees for 30 minutes", "Sprinkle brown sugar and hoped nuts on top before baking."], 
        ingredients: [
          Ingredient.new(recipe_id:4, measurement:1.5, measurement_unit:"Cup", ingredient:"Sugar", notes:nil),
          Ingredient.new(recipe_id:4, measurement:2.33, measurement_unit:"Cup", ingredient:"Flour", notes:"For bundt cake"),
          Ingredient.new(recipe_id:4, measurement:2.0, measurement_unit:"Cup", ingredient:"Flour", notes:"For regular cake"),
          Ingredient.new(recipe_id:4, measurement:1.0, measurement_unit:"tsp", ingredient:"Soda", notes:nil),
          Ingredient.new(recipe_id:4, measurement:0.33, measurement_unit:"Cup", ingredient:"Wesson Oil", notes:nil),
          Ingredient.new(recipe_id:4, measurement:1.0, measurement_unit:"Can", ingredient:"Fruit Cocktail", notes:"Not drained"),
          Ingredient.new(recipe_id:4, measurement:2.0, measurement_unit:nil, ingredient:"Egg", notes:nil),
          Ingredient.new(recipe_id:4, measurement:1.0, measurement_unit:"tsp", ingredient:"Vanilla", notes:nil),
          Ingredient.new(recipe_id:4, measurement:1.0, measurement_unit:"tsp", ingredient:"Cinnamon", notes:nil),
          Ingredient.new(recipe_id:4, measurement:0.33, measurement_unit:"Cup", ingredient:"Brown Sugar", notes:nil),
          Ingredient.new(recipe_id:4, measurement:0.5, measurement_unit:"Cup", ingredient:"Chopped Nuts", notes:"Or more")],
        cooking_time:nil,
        source: self.sources[0],
        category:"Baked Goods",
        notes:"My favorite. No icing. Top with Cool Whip.",
        image:"fruit-cocktail-cake.jpg"),

    Recipe.new(
      id: 05, 
      title:"Ribbon Sandwiches",
      directions: ["1 - Ground minced ham, pickles, eggs and mayonnaise", "2 - Ground hard cooked eggs, salt, pepper, mustard and mayonnaise", "3 - Ground cheese (Velveeta type), pimentos and mayonnaise", "Wrap in waxed paper, then in damp towel", "Chill for several hours."],
      ingredients: [
        Ingredient.new(recipe_id:5, measurement:nil, measurement_unit:nil, ingredient:"Ground Minced Ham", notes:nil),
        Ingredient.new(recipe_id:5, measurement:nil, measurement_unit:nil, ingredient:"Pickles", notes:nil),
        Ingredient.new(recipe_id:5, measurement:nil, measurement_unit:nil, ingredient:"Ground Hard Cooked Eggs", notes:nil),
        Ingredient.new(recipe_id:5, measurement:nil, measurement_unit:nil, ingredient:"Mayonnaise", notes:nil),
        Ingredient.new(recipe_id:5, measurement:nil, measurement_unit:nil, ingredient:"Salt and Pepper", notes:nil),
        Ingredient.new(recipe_id:5, measurement:nil, measurement_unit:nil, ingredient:"Mustard", notes:nil),
        Ingredient.new(recipe_id:5, measurement:nil, measurement_unit:nil, ingredient:"Ground Cheese", notes:nil)],
      cooking_time:nil,
      source: self.sources[0],
      category:"Sandwiches",
      notes:nil,
      image:"ribbon-sandwiches.jpg"),

    Recipe.new(
      id: 06, 
      title:"Glorified Rice",
      directions: ["In large bowl, combine all ingredients", "Mix well", "Cover and refrigerate until serving time."],
      ingredients: [
        Ingredient.new(recipe_id:6, measurement:3.0, measurement_unit:"Cup", ingredient:"Cold Cooked Rice", notes:nil),
        Ingredient.new(recipe_id:6, measurement:1.0, measurement_unit:"Cup", ingredient:"Chopped Tart Apple", notes:"1 Large"),
        Ingredient.new(recipe_id:6, measurement:0.33, measurement_unit:"Cup", ingredient:"Sugar", notes:nil),
        Ingredient.new(recipe_id:6, measurement:0.5, measurement_unit:"tsp", ingredient:"Salt", notes:nil),
        Ingredient.new(recipe_id:6, measurement:4.0, measurement_unit:"Cup", ingredient:"Frozen Whipped Topping", notes:"Thawed"),
        Ingredient.new(recipe_id:6, measurement:1.0, measurement_unit:"tsp", ingredient:"Vanilla", notes:nil),
        Ingredient.new(recipe_id:6, measurement:0.5, measurement_unit:"tsp", ingredient:"Almond", notes:nil),
        Ingredient.new(recipe_id:6, measurement:1.0, measurement_unit:"Can", ingredient:"Crushed Pineapple", notes:"20 oz. Drained."),
        Ingredient.new(recipe_id:6, measurement:1.0, measurement_unit:"Jar", ingredient:"Maraschino Cherries", notes:"10 oz. Drained and quartered.")],
      cooking_time:nil,
      source: self.sources[0],
      category:"No-Bake Desserts",
      notes:"For lighter, fluffier rice, add 1 tsp lemon juice to the cooking water. Makes 10 (3/4 Cup) servings.",
      image:"glorified-rice.jpg"),

    Recipe.new(
      id: 07, 
      title:"Pumpkin Cake Roll",
      directions: ["Beat eggs on high speed of mixer for five minutes", "Gradually be at in granulated sugar", "Stir in pumpkin and lemon juice", "Stir together flour, baking powder, cinnamon, ginger, nutmeg and salt", "Fold into pumpkin mix", "Spread in well greased and floured 15 x 10 x 1 jelly roll pan", "Top with finely chopped nuts", "Bake at 375 degrees for 15 minutes. Turn out on towel sprinkled with powdered sugar", "Starting at narrow end, roll towel and cake together", "Cool", "Unroll", "For filling, combine cream cheese, butter, powdered sugar and vanilla", "Beat smooth and fluffy", "Roll and chill."],
      ingredients: [
        Ingredient.new(recipe_id:7, measurement:3.0, measurement_unit:nil, ingredient:"Egg", notes:nil),
        Ingredient.new(recipe_id:7, measurement:1.0, measurement_unit:"Cup", ingredient:"Sugar", notes:nil),
        Ingredient.new(recipe_id:7, measurement:0.66, measurement_unit:"Cup", ingredient:"Pumpkin", notes:nil),
        Ingredient.new(recipe_id:7, measurement:1.0, measurement_unit:"tsp", ingredient:"Lemon Juice", notes:nil),
        Ingredient.new(recipe_id:7, measurement:0.75, measurement_unit:"Cup", ingredient:"Flour", notes:nil),
        Ingredient.new(recipe_id:7, measurement:1.0, measurement_unit:"tbsp", ingredient:"Baking Powder", notes:nil),
        Ingredient.new(recipe_id:7, measurement:2.0, measurement_unit:"tsp", ingredient:"Cinnamon", notes:nil),
        Ingredient.new(recipe_id:7, measurement:1.0, measurement_unit:"tsp", ingredient:"Ginger", notes:nil),
        Ingredient.new(recipe_id:7, measurement:0.5, measurement_unit:"tsp", ingredient:"Nutmeg", notes:nil),
        Ingredient.new(recipe_id:7, measurement:0.5, measurement_unit:"tsp", ingredient:"Salt", notes:nil),
        Ingredient.new(recipe_id:7, measurement:1.0, measurement_unit:"Cup", ingredient:"Finely Chopped Nuts", notes:nil),
        Ingredient.new(recipe_id:7, measurement:6.0, measurement_unit:"Ounce", ingredient:"Cream Cheese", notes:nil),
        Ingredient.new(recipe_id:7, measurement:4.0, measurement_unit:"tbsp", ingredient:"Butter", notes:nil),
        Ingredient.new(recipe_id:7, measurement:1.0, measurement_unit:"Cup", ingredient:"Powdered Sugar", notes:"Plus more for towel."),
        Ingredient.new(recipe_id:7, measurement:0.5, measurement_unit:"tsp", ingredient:"Vanilla", notes:nil)],
      cooking_time:nil,
      source: self.sources[2],
      category:"Baked Goods",
      notes:nil,
      image:"pumpkin-cake-roll-front.jpg"),

    Recipe.new(
      id: 10, 
      title:"Hamburger Casserole",
      directions: ["Brown and drain hamburger", "Season with salt, pepper, and onion powder", "Put layer of hamburger in bake dish", "Layer of hash brown potatoes", "Layer of cream of mushroom soup", "Layer of vegetables", "Top with Cheese Whiz", "Bake at 350 degrees and bubbly and hot"],
      ingredients: [
        Ingredient.new(recipe_id:8, measurement:nil, measurement_unit:nil, ingredient:"Hamburger", notes:nil),
        Ingredient.new(recipe_id:8, measurement:nil, measurement_unit:nil, ingredient:"Hash Brown Potatoes", notes:nil),
        Ingredient.new(recipe_id:8, measurement:nil, measurement_unit:nil, ingredient:"Cream of Mushroom Soup", notes:nil),
        Ingredient.new(recipe_id:8, measurement:nil, measurement_unit:nil, ingredient:"Vegetables", notes:"Could use leftovers."),
        Ingredient.new(recipe_id:8, measurement:nil, measurement_unit:nil, ingredient:"Cheese Whiz", notes:nil)],
      cooking_time:nil,
      source: self.sources[0],
      category:"Casseroles",
      notes:nil,
      image:"hamburger-casserole.jpg"),

    Recipe.new(
      id: 11, 
      title:"Super Delicious Cake",
      directions: ["Mix coconut creme and condensed milk", "Prepare cake as directed", "Bake in a 13 inch pan", "Punch holes all over hot cake", "Pour milk and cream mixture carefully over cake while hot", "Fold flaked coconut with Dream Whip or Cool Whip", "When cake is cooled, cover cake with Dream Whip and few chopped nuts, if desired."],
      ingredients: [
        Ingredient.new(recipe_id:9, measurement:1.0, measurement_unit:"Package", ingredient:"Deluxe White Cake Mix", notes:nil),
        Ingredient.new(recipe_id:9, measurement:1.0, measurement_unit:"Can", ingredient:"Coconut Creme", notes:nil),
        Ingredient.new(recipe_id:9, measurement:1.0, measurement_unit:"Can", ingredient:"Condensed Milk", notes:"Eagle Brand"),
        Ingredient.new(recipe_id:9, measurement:1.0, measurement_unit:"Large Tub", ingredient:"Cool Whip", notes:"or two packages dream whip."),
        Ingredient.new(recipe_id:9, measurement:3.5, measurement_unit:"Ounce", ingredient:"Moist flaked coconut", notes:nil),
        Ingredient.new(recipe_id:9, measurement:nil, measurement_unit:"Few", ingredient:"Chopped Nuts", notes:"Optional")],
      cooking_time:nil,
      source: self.sources[2],
      category:"Baked Goods",
      notes:nil,
      image:"super-delicious-cake.jpg"),

    Recipe.new(
      id: 12,
      title: "Tuna Casserole",
      directions: ["Mix together.", "Put in buttered dish.", "Sprinkle some Krispies on top.", "Bake for one hour at 350 degrees."],
      ingredients: [
        Ingredient.new(recipe_id:12, measurement:2.0, measurement_unit:"Can", ingredient:"Chicken Noodle Soup", notes:nil),
        Ingredient.new(recipe_id:12, measurement:1.0, measurement_unit:"Can", ingredient:"Mushroom Soup", notes:nil),
        Ingredient.new(recipe_id:12, measurement:1.0, measurement_unit:"Can", ingredient:"Tuna Fish", notes:nil),
        Ingredient.new(recipe_id:12, measurement:1.0, measurement_unit:"Box", ingredient:"Rice Krispies", notes:nil)],
      cooking_time:nil, 
      source: self.sources[0],
      category: "Casseroles",
      notes: "Mother's - Clara Schulz",
      image: "tuna-casserole.jpg")
    ]
  end

  def self.find(id)
    all.find do |recipe|
      recipe.id == id
    end
  end

  def self.find_source(id)
    sources.find do |source|
      source.id == id
    end  
  end

  def self.search(pattern)
    all.select do |recipe|
      recipe.category.downcase.include?(pattern.downcase) ||
      recipe.title.downcase.include?(pattern.downcase) ||
      recipe.source.name.downcase.include?(pattern.downcase)
      # recipe.ingredients.collect do |ingredient| 
      #   ingredient.ingredient.downcase.include?(pattern.downcase) 
      # end    ||
      # recipe.directions.each do |direction|
      #   direction.downcase.include?(pattern.downcase)
      # end 
    end
  end


  # def self.list_categories
  #   categories = all.map { |recipe| recipe.category }.uniq
  #   categories.each do |category|
  #     puts category
  #     list = Collection.all.select { |recipe| recipe.category==category }
  #     list.each { |recipe| puts recipe.title }
  #   end  
  # end

end

