class CreateTours < ActiveRecord::Migration[6.0]
  def change
    create_table :tours do |t|
      t.string :title
      t.integer :country_id
      t.float :price
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps
    end
  end
end
