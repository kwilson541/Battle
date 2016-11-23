require "spec_helper"

feature "Visible hit points", :type => :feature do
  scenario "Player 1 can see Player 2's hit points" do
    sign_in_and_play
    expect(page).to have_content("Mike has 200 HP")
  end
end