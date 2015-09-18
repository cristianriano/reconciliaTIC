class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name, index: true
      t.string :password_digest
      t.text :history
      t.string :zone

      t.timestamps null: false
    end
  end
end
