require 'spec_helper'

RSpec.feature 'Attack player2', :type => :feature do
  scenario 'We want player1 to attack player2' do
    sign_in_and_play
    click_button('Attack!')
    expect(page).to have_text("has been attacked")
  end
end
