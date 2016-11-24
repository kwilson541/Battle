require 'spec_helper'
require_relative 'web_helpers'

describe "Hitpoints" do
  context "when both players enter their names and get redirected" do

    before do
      sign_in_and_play
    end

    it "should show player 2s hitpoints" do
      expect(page).to have_content("Player 2's Hitpoints")
    end

    it "should show player 1s hitpoints" do
      expect(page).to have_content("Player 1's Hitpoints")
    end
  end
end
