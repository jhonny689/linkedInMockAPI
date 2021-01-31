class Person < ApplicationRecord
  belongs_to :city
  has_many :company_people
  has_many :companies, through: :company_people

  validates :email, presence: true, uniqueness: true
end
