# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

## Deploying on Render

The root `render.yaml` defines a Render web service and PostgreSQL database.
Create a Blueprint for this repository and select the branch containing these
changes. When prompted, set `RAILS_MASTER_KEY` to the key that decrypts
`config/credentials.yml.enc`; do not commit or share the key. Render runs
database preparation at service startup.

The free PostgreSQL plan may have usage limits or expiration. Upgrade the
database plan in Render before relying on it for long-term data.
