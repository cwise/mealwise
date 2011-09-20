class CreateMeals < ActiveRecord::Migration
  def self.up
    create_table :meals do |t|
      t.integer :user_id
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :meals
  end
end
