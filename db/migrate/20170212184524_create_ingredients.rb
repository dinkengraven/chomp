class CreateIngredients < ActiveRecord::Migration[5.0]
  def change
    create_table :ingredients do |t|
      t.references :food, foreign_key: true
      t.references :recipe, foreign_key: true
      t.float :amount
      t.string :unit
      t.string :instructions

      t.timestamps
    end
  end
end
