require 'capybara/dsl'
require 'capybara/rspec'
require 'app'

feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_1_name, with: 'Link'
    fill_in :player_2_name, with: 'Ganon'
    click_button 'Submit'
    expect(page).to have_content 'Link vs. Ganon'
  end
end
