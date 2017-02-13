class CreateAisles < ActiveRecord::Migration[5.0]
  def change
    create_table :aisles do |t|
      t.string :name

      t.timestamps
    end
  end
end
