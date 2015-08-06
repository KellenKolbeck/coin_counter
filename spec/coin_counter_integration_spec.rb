require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('/', {:type => :feature}) do
  it ('loads the webpage correctly') do
    visit('/')
    expect(page).to have_content("Please enter the customer's change")

  end
end
