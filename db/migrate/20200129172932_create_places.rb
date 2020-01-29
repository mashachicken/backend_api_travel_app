class CreatePlaces < ActiveRecord::Migration[5.2]
  def change
    create_table :places do |t|
      t.column :country, :string
      t.column :city, :string
    end
  end
end
