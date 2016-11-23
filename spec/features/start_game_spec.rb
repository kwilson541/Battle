require "spec_helper"

feature "Entering player names", :type => :feature do
  scenario "Both players enter their names" do
    visit "/"

    fill_in("player1", with: "Mike")
    fill_in("player2", with: "Kim")
    click_button("HADOKEN!!!!")

    expect(page).to have_text("Mike vs Kim - are you ready?")
  end
end
