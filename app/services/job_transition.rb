class JobTransition 

    def self.create (person_id, company_id, start_date)

        person = People.find(person_id)
        company_person = person.company_people.active.last
        new_company = person.company_people.new(person_id: person_id, company_id: company_id, start_date: start_date)
        
        if new_company.save 
            if company_person
                company_person.update(end_date: start_date - 1.day)
            end
            return true
        end

        return false

    end

end