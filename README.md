# eiresis - The Social Network for eDemocracy

#### Requirements
* PostgreSQL 9 with the hstore extension enabled.
* Redis in order to execute Sidekiq and all background jobs.

### Local installation

1. Download the project
```
git clone https://github.com/ciscord/Eiresis.git
cd eiresis
```
2. Install the libraries
```
bundle
```
3. Configure environment variables (such as PayPal, Google Maps API, etc.), run
```
cp config/application.example.yml config/application.yml
```
then edit the `.yml` file and set your custom values
4. Bootstrap the database, populating it with initial data (be advised: it needs ~ 5 minutes)
```    
bundle exec rake db:setup
```
5. Run eiresis
```
bundle exec rails s
```
7. run Sidekiq
```
bundle exec sidekiq
```

Done! You have now a working version of eiresis!

#### Foreman
If you want to run all processes in a single command you can use Foreman
```
bundle exec foreman start
```
and it will take care of running everything for you.

#### Mailman
Users can reply in the forum by email. Run
```
ruby script/mailman_server.rb
```
in background to receive emails and create forum posts from them.

## Docker

See [Docker README](DOCKER_README.md)

## Seeding more data


You'll probably need some fake data in your development environment to test stuff.
These scripts are available:

    bundle exec rake eiresis:seed:more:public_proposals[number]

Will generate `number` fake proposals in public open space and `number` new users (one for each proposal)

    bundle exec rake eiresis:seed:more:votable_proposals[number]

Will generate `number` fake proposals in public open space in vote for the next three days and `number` new users (one for each proposal)

    bundle exec rake eiresis:seed:more:clear_proposals

Destroy all the proposals in the database

To generate other fake data look at `spec/factories` folder.

## Environment variables

Look at `application.example.yml` for a detailed explanation of each environment variable.

## I18n

Contribute on Crowdin to the Translation of the project

## What else should I know? What are we working on right now?

We want to take out everything which is related to our installation and make it easier to install.

Our main goal is to make it even more simple and usable for everybody!
