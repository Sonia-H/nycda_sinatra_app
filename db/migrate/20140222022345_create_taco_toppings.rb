class CreateTacoToppings < ActiveRecord::Migration
  def change
    create_join_table :tacos, :toppings
  end
end
