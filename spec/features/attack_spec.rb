require 'spec_helper'

feature "Confirm attacks", :type => :feature do
  scenario "When player 1 attacks player 2, there is confirmation of the attack" do
    sign_in_and_play
    click_button("GET PUNCHY!!!!")
    expect(page).to have_content("Mike was punched in the jeans")
  end
  
end
