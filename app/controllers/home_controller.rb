class HomeController < ApplicationController
  def index
    @tags=Meal.tag_counts_on(:tags)
    @tags.sort!{ |a,b| a.name.downcase <=> b.name.downcase }
  end

end
