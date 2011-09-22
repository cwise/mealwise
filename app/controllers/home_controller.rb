class HomeController < ApplicationController
  def index
    @tags=Meal.tag_counts_on(:tags)
  end

end
