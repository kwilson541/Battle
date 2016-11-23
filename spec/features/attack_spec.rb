require 'spec_helper'

feature "Confirm attacks", :type => :feature do
  scenario "When player 1 attacks player 2, there is confirmation of the attack" do
    sign_in_and_play
    click_button("GET PUNCHY!!!!")
    expect(page).to have_content("Mike was punched in the jeans")
  end

  scenario "When player 1 attacks player 2, player 2's hit points are reduced by 10" do
    sign_in_and_play
    click_button("GET PUNCHY!!!!")
    expect(page).to have_content("BIF! BAM! SMASH! Mike now has 190 HP, keep at 'em!")
  end
end
