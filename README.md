# README

[![Ruby Style Guide](https://img.shields.io/badge/code_style-rubocop-brightgreen.svg)](https://github.com/rubocop-hq/rubocop)


* Ruby 2.6.6

* Postgres
  - `bin/rails db:create`

* Run test suite with rspec - `rspec` or `rspec spec/path/to/test`

* Bringing up for local development
  - Make sure you have Postgres running locally
  - `git clone git@github.com:maxkadel/top_timeline.git`
  - `cd top_timeline`
  - `bundle install`
  - `rails db:create`
  - `rails db:migrate`
  - `heroku local`
  - visit [http://localhost:3000/](http://localhost:3000/) and you should see the application running locally

* heroku tasks ([reference](https://devcenter.heroku.com/articles/getting-started-with-rails6#create-a-new-rails-app-or-upgrade-an-existing-one))
  - Deployment
    - `git push heroku main`
  - Run migrations
    - `heroku run rake db:migrate`
  - See information on running containers
    - `heroku ps`
  - See remote logs
    - `heroku logs --tail`
