class RemoveCompanyFromPerson < ActiveRecord::Migration[6.0]
  def change
    remove_column :people, :city_id
  end
end
