require "test_helper"

class AlterationRecordsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @alteration_record = alteration_records(:one)
  end

  test "should get index" do
    get alteration_records_url, as: :json
    assert_response :success
  end

  test "should create alteration_record" do
    assert_difference("AlterationRecord.count") do
      post alteration_records_url, params: { alteration_record: { altered_in_care: @alteration_record.altered_in_care, clinic: @alteration_record.clinic, date: @alteration_record.date, type: @alteration_record.type, veterinarian: @alteration_record.veterinarian } }, as: :json
    end

    assert_response :created
  end

  test "should show alteration_record" do
    get alteration_record_url(@alteration_record), as: :json
    assert_response :success
  end

  test "should update alteration_record" do
    patch alteration_record_url(@alteration_record), params: { alteration_record: { altered_in_care: @alteration_record.altered_in_care, clinic: @alteration_record.clinic, date: @alteration_record.date, type: @alteration_record.type, veterinarian: @alteration_record.veterinarian } }, as: :json
    assert_response :success
  end

  test "should destroy alteration_record" do
    assert_difference("AlterationRecord.count", -1) do
      delete alteration_record_url(@alteration_record), as: :json
    end

    assert_response :no_content
  end
end
