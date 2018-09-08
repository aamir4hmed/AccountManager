# AccountManager

	AccountManager is a POC for Managing Accounts and Internal transfers to and from a Fidor Account. 

# Rails version:
		5.1.6

# Ruby version: 
		2.3.5

# Setup
	
	- Mock Fidor API using stoplight and process HTTP requests
	- using httparty gem

	- Implement Bootstrap v4 for simple UI design

	- bundle install
	- Installs the gems in the Gemfile

# Important gems/libraries installed:

	- httparty
		To process HTTP requests to 3rd Party API

	- bootstrap:
		bootstrap for implementing UI design.

# Deployment using Heroku:

		heroku login

	- Install Heroku CLI

	- Install Ruby > 2.3.5

	- Replace 'sqlite3' gem with 'pg' gem

	- bundle install

	- heroku create account-manager-poc
		Creates Heroku live application "https://account-manager-poc.herokuapp.com/"

	- git push heroku master
		Push git repository code to Heroku