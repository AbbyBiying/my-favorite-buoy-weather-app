# my-favorite-buoy-weather-app
 
This is a simple Sinatra web app to demo NDBC API.
You can demo this application on Heroku: https://my-favorite-buoy-weather-app.herokuapp.com/

# Implementation
 
The app is implemented with Sinatra, a simple Ruby framework for building web applications.
  
OpenURI is used to call NDBC API.

Rendering is done on the server side with erb.

jQuery AJAX is used to make requests to the backend.

Debugging tool is Pry, an IRB alternative and runtime developer console.

# Testing

Rspec is used for unit tests. 

Capybara is used for intergration tests with WebMock, a Library for stubbing and setting expectations on HTTP requests in Ruby.
 
# Build / Run

If you check out this source code you can run it on your local machine.

Install ruby-2.4.2 (via apt, brew, or rvm)
gem install bundler
bundle install
bundle exec puma