require 'capybara/dsl'
require 'capybara/rspec'
#require 'selenium-webdriver'
require 'capybara/poltergeist'
require 'app'

describe 'Battle - ' do
  feature 'View hit points - ' do
    scenario 'view player 2 hit points' do
      sign_in_and_play
      expect(page).to have_content('Ganon: 20HP')
    end
  end
end
