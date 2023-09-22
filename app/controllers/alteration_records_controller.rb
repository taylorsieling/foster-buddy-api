class AlterationRecordsController < ApplicationController
  before_action :set_alteration_record, only: %i[ show update destroy ]

  # GET /alteration_records
  def index
    @alteration_records = AlterationRecord.all

    render json: @alteration_records
  end

  # GET /alteration_records/1
  def show
    render json: @alteration_record
  end

  # POST /alteration_records
  def create
    @alteration_record = AlterationRecord.new(alteration_record_params)

    if @alteration_record.save
      render json: @alteration_record, status: :created, location: @alteration_record
    else
      render json: @alteration_record.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /alteration_records/1
  def update
    if @alteration_record.update(alteration_record_params)
      render json: @alteration_record
    else
      render json: @alteration_record.errors, status: :unprocessable_entity
    end
  end

  # DELETE /alteration_records/1
  def destroy
    @alteration_record.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_alteration_record
      @alteration_record = AlterationRecord.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def alteration_record_params
      params.require(:alteration_record).permit(:type, :date, :clinic, :veterinarian, :altered_in_care)
    end
end
