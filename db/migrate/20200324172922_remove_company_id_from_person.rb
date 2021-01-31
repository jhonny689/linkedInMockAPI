class RemoveCompanyIdFromPerson < ActiveRecord::Migration[6.0]
  def change
    remove_column :people, :company_id
  end
end
