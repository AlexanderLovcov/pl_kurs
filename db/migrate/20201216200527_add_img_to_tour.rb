class AddImgToTour < ActiveRecord::Migration[6.0]
  def change
    add_column :tours, :image, :string
  end
end
