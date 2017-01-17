require 'spec_helper'

RSpec.feature "Name form", :type => :feature do
	scenario "User enters a name and submit" do
	sign_in_and_play
	expect(page).to have_content('John vs Bill')
	end
end

RSpec.feature "Hit points", :type => :feature do
	scenario "Seeing hit points" do 
	sign_in_and_play
	expect(page).to have_content ('Bill: 100 HP')
	end
end