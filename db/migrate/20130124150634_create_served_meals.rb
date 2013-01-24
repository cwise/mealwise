class CreateServedMeals < ActiveRecord::Migration
  def change
    create_table :served_meals do |t|
      t.date :served_at

      t.timestamps
    end
  end
end
