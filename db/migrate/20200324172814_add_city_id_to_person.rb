class AddCityIdToPerson < ActiveRecord::Migration[6.0]
  def change
    add_column :people, :city_id, :integer, index: true
  end
end
