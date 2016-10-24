class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :alias
      t.string :email
      t.string :password_digest
      t.integer :phone
      t.integer :birthday

      t.timestamps
    end
  end
end
