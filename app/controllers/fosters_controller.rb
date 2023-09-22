class FostersController < ApplicationController
  before_action :set_foster, only: %i[ show update destroy ]

  # GET /fosters
  def index
    @fosters = Foster.all

    render json: @fosters
  end

  # GET /fosters/1
  def show
    render json: @foster
  end

  # POST /fosters
  def create
    @foster = Foster.new(foster_params)

    if @foster.save
      render json: @foster, status: :created, location: @foster
    else
      render json: @foster.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /fosters/1
  def update
    if @foster.update(foster_params)
      render json: @foster
    else
      render json: @foster.errors, status: :unprocessable_entity
    end
  end

  # DELETE /fosters/1
  def destroy
    @foster.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foster
      @foster = Foster.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def foster_params
      params.require(:foster).permit(:name, :species, :sex, :date_of_birth, :breed, :color_1, :color_2, :pattern, :altered_status, :adoption_status, :bio, :portrait)
    end
end
