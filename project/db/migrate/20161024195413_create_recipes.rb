class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :serving_size
      t.string :time
      t.string :ingredients
      t.string :directions
      t.string :title
      t.references :user, index: true

      t.timestamps
    end
  end
end
