class Meal < ActiveRecord::Base
  acts_as_taggable
  belongs_to :user
  validates :name, :presence => true, :uniqueness => true
end
