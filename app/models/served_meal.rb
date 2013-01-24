class ServedMeal < ActiveRecord::Base
  has_and_belongs_to_many :meals
  attr_accessible :served_at, :meal_ids
end
