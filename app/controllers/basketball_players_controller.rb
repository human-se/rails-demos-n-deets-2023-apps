# frozen_string_literal: true

class BasketballPlayersController < ApplicationController
  before_action :set_basketball_player, only: %i[show edit update destroy]

  # GET /basketball_players or /basketball_players.json
  def index
    @basketball_players = BasketballPlayer.all
  end

  # GET /basketball_players/1 or /basketball_players/1.json
  def show
  end

  # GET /basketball_players/new
  def new
    @basketball_player = BasketballPlayer.new
  end

  # GET /basketball_players/1/edit
  def edit
  end

  # POST /basketball_players or /basketball_players.json
  def create
    @basketball_player = BasketballPlayer.new(basketball_player_params)

    respond_to do |format|
      if @basketball_player.save
        format.html { redirect_to @basketball_player, notice: 'Basketball player was successfully created.' }
        format.json { render :show, status: :created, location: @basketball_player }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @basketball_player.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /basketball_players/1 or /basketball_players/1.json
  def update
    respond_to do |format|
      if @basketball_player.update(basketball_player_params)
        format.html { redirect_to @basketball_player, notice: 'Basketball player was successfully updated.' }
        format.json { render :show, status: :ok, location: @basketball_player }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @basketball_player.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /basketball_players/1 or /basketball_players/1.json
  def destroy
    @basketball_player.destroy!

    respond_to do |format|
      format.html do
        redirect_to basketball_players_path, status: :see_other, notice: 'Basketball player was successfully destroyed.'
      end
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_basketball_player
    @basketball_player = BasketballPlayer.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def basketball_player_params
    params.require(:basketball_player).permit(:first_name, :last_name, :position, :height_inches, :weight_lbs)
  end
end
