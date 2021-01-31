json.extract! company, :id, :name, :created_at, :updated_at

json.city do
  json.partial! "/api/v1/cities/city.json.jbuilder", city: company.city
end