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
	expect(page).to have_content ('John: 100 HP')
	end
end

RSpec.feature "Attack", :type => :feature do
	scenario "Attack player two" do
		sign_in_and_play
		click_link('Attack')
		expect(page).to have_content ('John attacked Bill!')
	end

	scenario "Reduce opponent HP by 10" do
		sign_in_and_play
		click_link('Attack')
		expect(page).to have_content ('90')
	end

	scenario "Reduce opponent HP by 10" do
		sign_in_and_play
		attack_and_switch
		click_link('Attack')
		expect(page).to have_content ('John HP has dropped by 10!')
	end
end

RSpec.feature "Switch", :type => :feature do
	scenario "Players can switch turns" do
		sign_in_and_play
		attack_and_switch
		expect(page).to_not have_content ("John is playing")
		expect(page).to have_content ("Bill is playing")
	end
end