class CreateTacos < ActiveRecord::Migration
  def change
    create_table :tacos do |t|
      t.string   :name
      t.integer  :rating
      t.boolean  :display
    end
  end
end
