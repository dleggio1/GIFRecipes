class AddTagsToGifs < ActiveRecord::Migration[5.0]
  def change
    add_column :gifs, :tags, :string
  end
end
