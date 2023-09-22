class MicrochipRecordsController < ApplicationController
  before_action :set_microchip_record, only: %i[ show update destroy ]

  # GET /microchip_records
  def index
    @microchip_records = MicrochipRecord.all

    render json: @microchip_records
  end

  # GET /microchip_records/1
  def show
    render json: @microchip_record
  end

  # POST /microchip_records
  def create
    @microchip_record = MicrochipRecord.new(microchip_record_params)

    if @microchip_record.save
      render json: @microchip_record, status: :created, location: @microchip_record
    else
      render json: @microchip_record.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /microchip_records/1
  def update
    if @microchip_record.update(microchip_record_params)
      render json: @microchip_record
    else
      render json: @microchip_record.errors, status: :unprocessable_entity
    end
  end

  # DELETE /microchip_records/1
  def destroy
    @microchip_record.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_microchip_record
      @microchip_record = MicrochipRecord.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def microchip_record_params
      params.require(:microchip_record).permit(:chip_number, :date_placed, :brand, :placed_by, :placed_in_care)
    end
end
