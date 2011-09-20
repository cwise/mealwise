class Meal < ActiveRecord::Base
  acts_as_taggable
  validates :name, :presence => true, :uniqueness => true
end
