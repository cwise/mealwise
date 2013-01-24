class Meal < ActiveRecord::Base
  acts_as_taggable
  has_and_belongs_to_many :served_meals
  belongs_to :user
  validates :name, :presence => true, :uniqueness => true
end
