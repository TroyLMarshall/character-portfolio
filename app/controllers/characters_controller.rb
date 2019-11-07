# frozen_string_literal: true

# Controller to manage Character CRUD operations
#
# @author Troy L. Marshall
# @since 1.0.0
class CharactersController < ApplicationController
  before_action :set_character, only: %i[show edit update destroy]
  before_action :authenticate_user!

  # GET /characters
  # GET /characters.json
  def index
    @characters = current_user.characters.all
  end

  # GET /characters/1
  # GET /characters/1.json
  def show
    @character = current_user.characters.find(params[:id])
  end

  # GET /characters/new
  def new
    @character = current_user.characters.new
  end

  # GET /characters/1/edit
  def edit
  end

  # POST /characters
  # POST /characters.json
  # rubocop:disable Metrics/AbcSize
  def create
    @character = current_user.characters.new(character_params)

    respond_to do |format|
      if @character.save
        format.html { redirect_to @character, notice: I18n.translate("success", scope: %i[characters new]) }
        format.json { render :show, status: :created, location: @character }
      else
        format.html { render :new }
        format.json { render json: @character.errors, status: :unprocessable_entity }
      end
    end
  end
  # rubocop:enable Metrics/AbcSize

  # PATCH/PUT /characters/1
  # PATCH/PUT /characters/1.json
  def update
    respond_to do |format|
      if @character.update(character_params)
        format.html { redirect_to @character, notice: I18n.translate("success", scope: %i[characters edit]) }
        format.json { render :show, status: :ok, location: @character }
      else
        format.html { render :edit }
        format.json { render json: @character.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /characters/1
  # DELETE /characters/1.json
  def destroy
    @character.destroy
    respond_to do |format|
      format.html { redirect_to characters_url, notice: I18n.translate("success", scope: %i[characters destroy]) }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_character
    @character = Character.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def character_params
    params.require(:character).permit(:name)
  end
end
