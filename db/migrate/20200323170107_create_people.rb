class CreatePeople < ActiveRecord::Migration[6.0]
  def change
    create_table :people do |t|
      t.string :name
      t.string :email, null: false, index: true
      t.references :city
      t.references :company

      t.timestamps
    end
  end
end
