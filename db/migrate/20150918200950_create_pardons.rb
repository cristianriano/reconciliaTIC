class CreatePardons < ActiveRecord::Migration
  def change
    create_table :pardons do |t|
      t.string :content
      t.string :kind

      t.timestamps null: false
    end
  end
end
