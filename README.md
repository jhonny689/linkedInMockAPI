# linkedInMockAPI
# README

This assumes you have Ruby 2.7.1 installed. I recommend using `rbenv`. Docker and 
Docker Compose are also helpful.

## Getting Started

Launch MySql with Docker and Detach
```
cd <path-to-this-project>
docker-compose up -d
```

Bundle Gems
```
bundle install
```

Initialize DB
```
bundle exec rake db:create
bundle exec rake db:migrate

RAILS_ENV=test bundle exec rake db:create
RAILS_ENV=test bundle exec rake db:migrate
```

Run Some Tests
```text
bundle exec rake test
```

Seed the Data (this might take a bit)
```text
rake db:seed
```

Run the server
```text
rails s
```

## Make Some API Calls

See `SAMPLES.http`