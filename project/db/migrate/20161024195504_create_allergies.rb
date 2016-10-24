class CreateAllergies < ActiveRecord::Migration
  def change
    create_table :allergies do |t|
      t.string :content
      t.references :recipe, index: true

      t.timestamps
    end
  end
end
