class CreateCompanyPeople < ActiveRecord::Migration[6.0]
  def change
    create_table :company_people do |t|
      t.references :person
      t.references :company
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
