require 'spec_helper'

RSpec.feature "Fill in form", :type => :feature do
  scenario "User fills in form" do
    sign_in_and_play
    expect(page).to have_text("Player 1: Tom")
    expect(page).to have_text("Player 2: Courtney")
  end
end
