class City < ApplicationRecord
  has_many :people
  has_many :companies

  validates_presence_of :name
  validates_length_of :state, maximum: 2
end
