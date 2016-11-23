require "spec_helper"

feature "Entering player names", :type => :feature do
  scenario "Both players enter their names" do
    visit "/"

    fill_in("player1", with: "Kim")
    fill_in("player2", with: "Mike")
    click_button("HADOKEN!!!!")

    expect(page).to have_content("Kim vs Mike - are you ready?")
  end
end

feature "Visible hit points", :type => :feature do
  scenario "Player 1 can see Player 2's hit points" do
    visit "/"

    fill_in("player1", with: "Kim")
    fill_in("player2", with: "Mike")
    click_button("HADOKEN!!!!")

    expect(page).to have_content("Mike has 200 HP")
  end
end
