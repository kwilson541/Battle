require 'spec_helper'

RSpec.feature "Fill in form", :type => :feature do
  scenario "User fills in form" do
    visit "/"
    fill_in 'player1', :with => 'Tom'
    fill_in 'player2', :with => 'Courtney'
    click_button 'Submit'
    expect(page).to have_text("Player 1: Tom")
    expect(page).to have_text("Player 2: Courtney")
  end
end
