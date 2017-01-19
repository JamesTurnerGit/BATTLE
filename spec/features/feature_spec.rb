require 'spec_helper'

feature "Name form" do
	scenario "User enters a name and submit" do
		sign_in_and_play
		expect(page).to have_content('John vs Bill')
	end
end

feature "Hit points" do
	scenario "Seeing hit points" do
		sign_in_and_play
		expect(page).to have_content ('Bill: 100 HP')
		expect(page).to have_content ('John: 100 HP')
	end
end

feature "Attack" do
	scenario "Attack player two" do
		sign_in_and_play
		click_button('Attack')
		expect(page).to have_content ('John attacked Bill!')
	end

	scenario "Reduce opponent HP by random ammount" do
		srand(67809)
		sign_in_and_play
		attack_and_switch
		click_button('Attack')
		expect(page).to have_content ('John\'s HP has dropped!')
	end
end

feature "Switch" do
	scenario "Players can switch turns" do
		sign_in_and_play
		attack_and_switch
		expect(page).to_not have_content ("John is playing")
		expect(page).to have_content ("Bill is playing")
	end
end

feature "Losing" do
	scenario "player reaches zero hp" do
		srand(67809)
		sign_in_and_play
		32.times do
			attack_and_switch
		end
		click_button('Attack!')
		expect(page).to have_content ("John is victorious!!")
	end
end

feature "Restart" do
	scenario "restart game after a player wins" do
		srand(67809)
		sign_in_and_play
		32.times do
			attack_and_switch
		end
		click_button('Attack!')
		click_button('Restart')
		expect(page).to have_content ("Welcome to... BATTLE!")
	end
end
