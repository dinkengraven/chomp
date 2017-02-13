class User < ApplicationRecord
  has_many :created_recipes, class_name: "Recipe", foreign_key: :creator_id
  has_secure_password
end
