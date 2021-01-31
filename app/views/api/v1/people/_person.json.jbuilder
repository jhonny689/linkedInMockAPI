json.extract! person, :id, :name, :email, :created_at, :updated_at

json.companies do
  json.array! person.companies, partial: "/api/v1/companies/company.json.jbuilder", as: :company
end

json.city do
  json.partial! "/api/v1/cities/city.json.jbuilder", city: person.city
end