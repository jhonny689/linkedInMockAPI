class CompanyPerson < ApplicationRecord
  belongs_to :person
  belongs_to :company

  scope :active, ->{ where(end_date: nil) }
end
