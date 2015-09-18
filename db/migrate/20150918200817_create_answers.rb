class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.text :content
      t.integer :state, default: 0
      t.references :question, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end