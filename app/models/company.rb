class Company < ApplicationRecord
  belongs_to :city
  has_many :company_people
  has_many :people, through: :company_people

  validates_presence_of :name
end
