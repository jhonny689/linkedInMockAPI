json.extract! @person, :id, :name

json.companies do
  json.array! @person.companies, partial: "/api/v1/companies/company.json.jbuilder", as: :company
end
