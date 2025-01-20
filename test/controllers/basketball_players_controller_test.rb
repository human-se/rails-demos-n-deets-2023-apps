require "test_helper"

class BasketballPlayersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @basketball_player = basketball_players(:one)
  end

  test "should get index" do
    get basketball_players_url
    assert_response :success
  end

  test "should get new" do
    get new_basketball_player_url
    assert_response :success
  end

  test "should create basketball_player" do
    assert_difference("BasketballPlayer.count") do
      post basketball_players_url, params: { basketball_player: { first_name: @basketball_player.first_name, height_inches: @basketball_player.height_inches, last_name: @basketball_player.last_name, position: @basketball_player.position, weight_lbs: @basketball_player.weight_lbs } }
    end

    assert_redirected_to basketball_player_url(BasketballPlayer.last)
  end

  test "should show basketball_player" do
    get basketball_player_url(@basketball_player)
    assert_response :success
  end

  test "should get edit" do
    get edit_basketball_player_url(@basketball_player)
    assert_response :success
  end

  test "should update basketball_player" do
    patch basketball_player_url(@basketball_player), params: { basketball_player: { first_name: @basketball_player.first_name, height_inches: @basketball_player.height_inches, last_name: @basketball_player.last_name, position: @basketball_player.position, weight_lbs: @basketball_player.weight_lbs } }
    assert_redirected_to basketball_player_url(@basketball_player)
  end

  test "should destroy basketball_player" do
    assert_difference("BasketballPlayer.count", -1) do
      delete basketball_player_url(@basketball_player)
    end

    assert_redirected_to basketball_players_url
  end
end
