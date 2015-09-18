class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text :content
      t.string :email
      t.string :zone
      t.integer :year

      t.timestamps null: false
    end
  end
end
