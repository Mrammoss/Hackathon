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

## Deploying the static site on Render

The root `render.yaml` publishes the informational page in `site/` as a Render
Static Site. Create a Blueprint for this repository and select the branch
containing these changes. No app server, database, or secret is required.

This static preview does not accept or store pothole reports. The Rails app
remains separate and would need a web service and database for live reporting.

https://fictional-barnacle-g4qr9ggqpgxrh9g67-3000.app.github.dev/
