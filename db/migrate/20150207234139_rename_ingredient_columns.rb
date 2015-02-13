class RenameIngredientColumns < ActiveRecord::Migration
  def change
    change_table :ingredients do |t|
      t.rename :ingredient_name, :name
    end
  end
end
