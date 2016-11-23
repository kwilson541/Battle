require "spec_helper"

feature "Entering player names", :type => :feature do
  scenario "Both players enter their names" do
    sign_in_and_play
    expect(page).to have_content("Kim vs Mike - are you ready?")
  end
end