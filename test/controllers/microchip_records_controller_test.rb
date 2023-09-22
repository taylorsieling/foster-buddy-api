require "test_helper"

class MicrochipRecordsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @microchip_record = microchip_records(:one)
  end

  test "should get index" do
    get microchip_records_url, as: :json
    assert_response :success
  end

  test "should create microchip_record" do
    assert_difference("MicrochipRecord.count") do
      post microchip_records_url, params: { microchip_record: { brand: @microchip_record.brand, chip_number: @microchip_record.chip_number, date_placed: @microchip_record.date_placed, placed_by: @microchip_record.placed_by, placed_in_care: @microchip_record.placed_in_care } }, as: :json
    end

    assert_response :created
  end

  test "should show microchip_record" do
    get microchip_record_url(@microchip_record), as: :json
    assert_response :success
  end

  test "should update microchip_record" do
    patch microchip_record_url(@microchip_record), params: { microchip_record: { brand: @microchip_record.brand, chip_number: @microchip_record.chip_number, date_placed: @microchip_record.date_placed, placed_by: @microchip_record.placed_by, placed_in_care: @microchip_record.placed_in_care } }, as: :json
    assert_response :success
  end

  test "should destroy microchip_record" do
    assert_difference("MicrochipRecord.count", -1) do
      delete microchip_record_url(@microchip_record), as: :json
    end

    assert_response :no_content
  end
end
