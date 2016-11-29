class AddRecipeToGif < ActiveRecord::Migration[5.0]
  def change
    add_column :gifs, :recipe, :text
  end
end
