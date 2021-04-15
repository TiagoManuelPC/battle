require 'capybara'
require 'capybara/rspec'
require 'rspec'
require 'features/web_helpers'

def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: 'Charlotte'
  fill_in :player_2_name, with: 'Mittens'
  click_button 'Submit'
end