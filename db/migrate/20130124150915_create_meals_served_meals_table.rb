class CreateMealsServedMealsTable < ActiveRecord::Migration
  def self.up
    create_table :meals_served_meals, :id => false do |t|
        t.references :meal
        t.references :served_meal
    end
    add_index :meals_served_meals, [:meal_id, :served_meal_id]
    add_index :meals_served_meals, [:served_meal_id, :meal_id]
  end

  def self.down
    drop_table :meals_served_meals
  end
end
