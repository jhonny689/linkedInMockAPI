class MigratePersonCompanyToCompanyPerson < ActiveRecord::Migration[6.0]
  def change
    Person.all.find_each do |person|
      CompanyPerson.create(person: person, company_id: person.company_id)
    end
  end
end
