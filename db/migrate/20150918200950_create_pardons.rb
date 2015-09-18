class CreatePardons < ActiveRecord::Migration
  def change
    create_table :pardons do |t|
      t.string :content
      t.integer :type

      t.timestamps null: false
    end
  end
end
