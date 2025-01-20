require "application_system_test_case"

class BasketballPlayersTest < ApplicationSystemTestCase
  setup do
    @basketball_player = basketball_players(:one)
  end

  test "visiting the index" do
    visit basketball_players_url
    assert_selector "h1", text: "Basketball players"
  end

  test "should create basketball player" do
    visit basketball_players_url
    click_on "New basketball player"

    fill_in "First name", with: @basketball_player.first_name
    fill_in "Height inches", with: @basketball_player.height_inches
    fill_in "Last name", with: @basketball_player.last_name
    fill_in "Position", with: @basketball_player.position
    fill_in "Weight lbs", with: @basketball_player.weight_lbs
    click_on "Create Basketball player"

    assert_text "Basketball player was successfully created"
    click_on "Back"
  end

  test "should update Basketball player" do
    visit basketball_player_url(@basketball_player)
    click_on "Edit this basketball player", match: :first

    fill_in "First name", with: @basketball_player.first_name
    fill_in "Height inches", with: @basketball_player.height_inches
    fill_in "Last name", with: @basketball_player.last_name
    fill_in "Position", with: @basketball_player.position
    fill_in "Weight lbs", with: @basketball_player.weight_lbs
    click_on "Update Basketball player"

    assert_text "Basketball player was successfully updated"
    click_on "Back"
  end

  test "should destroy Basketball player" do
    visit basketball_player_url(@basketball_player)
    click_on "Destroy this basketball player", match: :first

    assert_text "Basketball player was successfully destroyed"
  end
end
