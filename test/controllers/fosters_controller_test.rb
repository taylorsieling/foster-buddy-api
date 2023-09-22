require "test_helper"

class FostersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @foster = fosters(:one)
  end

  test "should get index" do
    get fosters_url, as: :json
    assert_response :success
  end

  test "should create foster" do
    assert_difference("Foster.count") do
      post fosters_url, params: { foster: { adoption_status: @foster.adoption_status, altered_status: @foster.altered_status, bio: @foster.bio, breed: @foster.breed, color_1: @foster.color_1, color_2: @foster.color_2, date_of_birth: @foster.date_of_birth, name: @foster.name, pattern: @foster.pattern, portrait: @foster.portrait, sex: @foster.sex, species: @foster.species } }, as: :json
    end

    assert_response :created
  end

  test "should show foster" do
    get foster_url(@foster), as: :json
    assert_response :success
  end

  test "should update foster" do
    patch foster_url(@foster), params: { foster: { adoption_status: @foster.adoption_status, altered_status: @foster.altered_status, bio: @foster.bio, breed: @foster.breed, color_1: @foster.color_1, color_2: @foster.color_2, date_of_birth: @foster.date_of_birth, name: @foster.name, pattern: @foster.pattern, portrait: @foster.portrait, sex: @foster.sex, species: @foster.species } }, as: :json
    assert_response :success
  end

  test "should destroy foster" do
    assert_difference("Foster.count", -1) do
      delete foster_url(@foster), as: :json
    end

    assert_response :no_content
  end
end
