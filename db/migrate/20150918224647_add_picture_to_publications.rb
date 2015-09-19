class AddPictureToPublications < ActiveRecord::Migration
  def change
    add_column :publications, :picture, :string
  end
end
