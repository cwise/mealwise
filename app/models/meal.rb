class Meal < ActiveRecord::Base
  acts_as_taggable
  has_and_belongs_to_many :served_meals, :order => 'served_at'
  belongs_to :user
  validates :name, :presence => true, :uniqueness => true

  def last_served
    served_meals.last.try(:served_at)
  end
end
