class CreateFoods < ActiveRecord::Migration[5.0]
  def change
    create_table :foods do |t|
      t.references :aisle, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
