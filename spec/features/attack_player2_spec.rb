require 'spec_helper'

RSpec.feature 'Attack player2', :type => :feature do
  scenario 'We want player1 to attack player2' do
    sign_in_and_play
    click_button('Attack!')
    expect(page).to have_content("Kim has been attacked")
  end

  scenario 'we want player twos hit points to go down by 10' do
    sign_in_and_play
    click_button('Attack!')
    expect(page).to have_content("HP was reduced by 10, Kim's HP = 10")
  end
end
