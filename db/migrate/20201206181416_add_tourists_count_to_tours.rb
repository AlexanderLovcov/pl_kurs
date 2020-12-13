class AddTouristsCountToTours < ActiveRecord::Migration[6.0]
  def change
    add_column :tours, :tourists_count, :integer
  end
end
