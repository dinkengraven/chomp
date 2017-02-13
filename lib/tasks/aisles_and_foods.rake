namespace :db do
  desc "create aisles and foods"
  task :aisles_and_foods => :environment do
    dairy = Aisle.create(name: "Dairy")
    chips_and_snacks = Aisle.create(name: "Chips and Snacks")
    produce = Aisle.create(name: "Produce")
    breads_and_baked_goods = Aisle.create(name: "Breads and Baked Goods")
    deli = Aisle.create(name: "Deli")
    meat_poultry_and_seafood = Aisle.create(name: "Meat, Poultry, and Seafood")
    bulk_goods = Aisle.create(name: "Bulk Goods")
    canned_goods = Aisle.create(name: "Canned Goods")
    pets = Aisle.create(name: "Pets")
    paper_goods = Aisle.create(name: "Paper Goods")
    cleaning_supplies = Aisle.create(name: "Cleaning Supplies")
    cereals_and_breakfast = Aisle.create(name: "Cereals and Breakfast")
    alcohol_and_bevs = Aisle.create(name: "Alcohol and Other Beverages")
    frozen = Aisle.create(name: "Frozen")
    pasta = Aisle.create(name: "Pasta")
    oil_and_vinegar = Aisle.create(name: "Oil and Vinegar")
    cheese = Aisle.create(name: "Cheese")
    soups_stocks_broth = Aisle.create(name: "Soups, Stocks, and Broth")
    spices_and_seasonings = Aisle.create(name: "Spices and Seasonings")
    baking_needs = Aisle.create(name: "Baking Needs")
    jams_and_preserves = Aisle.create(name: "Jams and Preserves")
    internaional_and_ethnic = Aisle.create(name: "International and Ethnic")
    cookies = Aisle.create(name: "Cookies")
    coffee_and_tea = Aisle.create(name: "Coffee and Tea")

    Food.create([
      { name: "garlic", aisle: produce },
      { name: "olive oil", aisle: oil_and_vinegar },
      { name: "canola oil", aisle: oil_and_vinegar },
      { name: "cooking oil", aisle: oil_and_vinegar },
      { name: "onion", aisle: produce },
      { name: "yellow onion", aisle: produce },
      { name: "red onion", aisle: produce },
      { name: "Kosher salt", aisle: spices_and_seasonings },
      { name: "sea salt", aisle: spices_and_seasonings },
      { name: "salt", aisle: spices_and_seasonings },
      { name: "pepper", aisle: spices_and_seasonings },
      { name: "vinegar", aisle: oil_and_vinegar },
      { name: "white vinegar", aisle: oil_and_vinegar },
      { name: "red wine vinegar", aisle: oil_and_vinegar },
      { name: "wine", aisle: alcohol_and_bevs },
      { name: "white wine", aisle: alcohol_and_bevs },
      { name: "red wine", aisle: alcohol_and_bevs },
      { name: "cooking wine", aisle: oil_and_vinegar },
      { name: "sherry", aisle: oil_and_vinegar },
      { name: "cooking sherry", aisle: oil_and_vinegar },
      { name: "cooking wine", aisle: oil_and_vinegar },
      { name: "rice wine vinegar", aisle: oil_and_vinegar },
      { name: "soy sauce", aisle: internaional_and_ethnic },
      { name: "tamari", aisle: internaional_and_ethnic },
      { name: "yogurt", aisle: dairy },
      { name: "plain yogurt", aisle: dairy },
      { name: "greek yogurt", aisle: dairy },
      { name: "eggs", aisle: dairy },
      { name: "flour", aisle: baking_needs },
      { name: "all-purpose flour", aisle: baking_needs },
      { name: "whole wheat flour", aisle: baking_needs },
      { name: "whole wheat pastry flour", aisle: baking_needs },
      { name: "bread flour", aisle: baking_needs },
      { name: "baking soda", aisle: baking_needs },
      { name: "baking powder", aisle: baking_needs },
      { name: "cornstarch", aisle: baking_needs },
      { name: "sugar", aisle: baking_needs },
      { name: "powdered sugar", aisle: baking_needs },
      { name: "black beans", aisle: canned_goods },
      { name: "pinto beans", aisle: canned_goods },
      { name: "kidney beans", aisle: canned_goods },
      { name: "garbanzo beans", aisle: canned_goods },
      { name: "carrot", aisle: produce },
      { name: "broccoli", aisle: produce },
      { name: "potato", aisle: produce },
      { name: "sweet potato", aisle: produce },
      { name: "green pepper", aisle: produce },
      { name: "kale", aisle: produce }
    ])
  end
end
