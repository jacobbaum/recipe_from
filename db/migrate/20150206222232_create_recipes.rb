class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :title
      t.integer :cooking_time
      t.string :category
      t.string :notes
      t.string :image

      t.timestamps null: false
    end
  end
end
