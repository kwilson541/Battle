require 'spec_helper'

describe "Entering names", :type => :feature do
  # include Capybara::DSL
  it "fills in names of players" do
    visit "/"

    fill_in "player1_name", :with => "Bill"
    fill_in "player2_name", :with => "Foo"
    click_button "SUBMIT"

    expect(page.current_path).to eq("/play")
    expect(page).to have_text("Bill")
    expect(page).to have_text("Foo")
  end
end
