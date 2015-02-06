class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.decimal :measurement
      t.string :measurement_unit
      t.string :ingredient_name
      t.string :notes

      t.timestamps null: false
    end
  end
end
