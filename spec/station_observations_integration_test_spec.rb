require 'spec_helper'
require 'webmock/rspec'
require 'capybara/dsl'

RSpec.feature "get buoys", :type => :feature do
  Capybara.default_max_wait_time = 3
  scenario "user visits homepage" do 
    stub_ndbc_rss
    visit '/'

    expect(page).to have_content('Welcome to My Favorite Buoy Weather App!')
    expect(page).to have_content('Here is a list of buoys within 100 nautical miles of 40°N, 73°W:')
    expect(page).to have_content('Your list of favorite stations:')
  end

  scenario "user view a list of buoys 100 nautical miles of 40°N, 73°W" do 
    stub_ndbc_rss
    visit '/'
    
    expect(page).to have_content('Welcome to My Favorite Buoy Weather App!')
    expect(page).to have_content('Station ID: 44025')
    expect(page).to have_content('Station ID: KPTN6')
    expect(page).to have_content('Station ID: BRHC3')
  end

  scenario "user can check the checkbox", js: true do
    stub_ndbc_rss
    visit '/'
 
    # Check checkbox for Station ID: ROBN4
    check('Station ID: ROBN4')
 
    expect(page).to have_content('Location: 40.657N 74.065W or 63 nautical miles NW of search location of 40N 73W.')
  end
 
  scenario "user can uncheck the checkbox", js: true do 
    stub_ndbc_rss
    visit '/'
 
    # Check checkbox for Station ID: 44025 and Station ID: 44066, then uncheck Station ID: 44025
    check('Station ID: 44025')
    check('Station ID: 44066')
    uncheck('Station ID: 44025')

    expect(page).to have_content('Location: 39.568N 72.586W or 32 nautical miles SE of search location of 40N 73W.')
    expect(page).to_not have_content('Location: 40.251N 73.164W or 17 nautical miles NNW of search location of 40N 73W.')
    binding.pry
  end

end

