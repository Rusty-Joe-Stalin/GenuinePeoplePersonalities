class RemoveImagePathFromProducts < ActiveRecord::Migration[5.0]
  def change
    remove_column :products, :image_path, :string
  end
end
