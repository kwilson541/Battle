require 'spec_helper'

RSpec.feature 'Attack player2', :type => :feature do
  scenario 'We want player1 to attack player2' do
    sign_in_and_play
    click_button('Attack!')
    expect(page).to have_content("Kim has been attacked")
  end

  scenario 'when a player is attacked, we want confirmation of the attack' do
    sign_in_and_play
    click_button('Attack!')
    expect(page).to have_content("Kim has been attacked by Tom")
  end

  scenario 'when a player is attacked, we want to confirm that damage has been received' do
    sign_in_and_play
    click_button('Attack!')
    expect(page).to have_content("HP has been reduced by 10")
  end

  scenario 'we want to display player ones HP' do
    sign_in_and_play
    click_button('Attack!')
    expect(page).to have_content("Tom's HP = 20")
  end

  scenario 'we want to display player twos HP' do
    sign_in_and_play
    click_button('Attack!')
    expect(page).to have_content("Kim's HP = 10")
  end

  scenario 'we want to switch players' do
    sign_in_and_play
    click_button('Attack!')
    click_button('Attack!')
    expect(page).to have_content("Tom has been attacked by Kim")
  end

end
