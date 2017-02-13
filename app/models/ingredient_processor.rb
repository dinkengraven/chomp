class IngredientProcessor
  attr_accessor :ingredient

  FRACTIONS = { "1/4": 0.25, "1/2": 0.5, "3/4": 0.75 }

  def initialize(ingredient)
    @ingredient = ingredient
  end

  def create
  end

  # 1 medium yellow onion, diced

  def parsed_amount
    raw = ingredient.input.scan(/\A\d?\s?\W?\d?\W?\d?/).first.strip
    if raw.to_f > 0
      @amount = raw
      
    else
      @amount = ingredient.input
    end
  end
end
