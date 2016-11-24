describe "Hitpoints" do
  context "when both players enter their names and get redirected" do

    before do
      visit "/"

      fill_in("player1_name",with: "Bill")
      fill_in("player2_name",with: "Foo")
      click_button "SUBMIT"
    end

    it "should show player 2s hitpoints" do
      expect(page).to have_content("Player 2's Hitpoints")
    end

    it "should show player 1s hitpoints" do
      expect(page).to have_content("Player 1's Hitpoints")
    end
  end
end
