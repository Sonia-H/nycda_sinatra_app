class CreateToppings < ActiveRecord::Migration
  def change
    create_table :toppings do |t|
      t.string   :name
      t.string   :serving_size
      t.integer  :serving_calories
    end
  end
end
