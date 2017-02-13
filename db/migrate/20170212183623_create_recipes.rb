class CreateRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :recipes do |t|
      t.integer :creator_id, foreign_key: true
      t.string :source_name
      t.string :source_url
      t.text :description
      t.text :steps
      t.integer :yield
      t.integer :total_time
      t.integer :prep_time
      t.integer :cook_time

      t.timestamps
    end
  end
end
