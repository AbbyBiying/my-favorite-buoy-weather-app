# my-favorite-buoy-weather-app
 
This is a simple Sinatra web app to demo NDBC API.
You can demo this application on [Heroku](https://my-favorite-buoy-weather-app.herokuapp.com/)

## Implementation
 
The app is implemented with Sinatra, a simple Ruby framework for building web applications.
  
OpenURI is used to call NDBC API.

Rendering is done on the server side with erb.

jQuery AJAX is used to make requests to the backend.

Debugging tool is Pry, an IRB alternative and runtime developer console.

## Running locally

First, git clone the repo:
```sh
git clone git@github.com:AbbyBiying/my-favorite-buoy-weather-app.git
```

### Installing Ruby
How to install Ruby: https://www.ruby-lang.org/en/documentation/installation/
 

#### On OS X machines, you can use Ruby Version Manager (RVM): https://rvm.io/rvm/install

Install RVM
```sh
\curl -sSL https://get.rvm.io | bash -s stable
```

Install Ruby 2.4
```sh
rvm install 2.4
```

Activate Ruby 2.4
```sh
rvm use 2.4
```

###  Installing Bundler gem and bundle install dependencies

```sh
gem install bundler
bundle install
```
#### Start the server
```sh
bundle exec puma
```
visit http://localhost:9292/

## Running tests
RSpec is used for unit tests. 

Capybara is used for intergration tests with WebMock, a Library for stubbing and setting expectations on HTTP requests in Ruby.

Run the test suite with RSpec:
```sh
bundle exec rspec -fd
```
