require 'test_helper'

class ChemestriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @chemestry = chemestries(:one)
  end

  test "should get index" do
    get chemestries_url
    assert_response :success
  end

  test "should get new" do
    get new_chemestry_url
    assert_response :success
  end

  test "should create chemestry" do
    assert_difference('Chemestry.count') do
      post chemestries_url, params: { chemestry: { end_date: @chemestry.end_date, name: @chemestry.name, start_date: @chemestry.start_date, user_id: @chemestry.user_id } }
    end

    assert_redirected_to chemestry_url(Chemestry.last)
  end

  test "should show chemestry" do
    get chemestry_url(@chemestry)
    assert_response :success
  end

  test "should get edit" do
    get edit_chemestry_url(@chemestry)
    assert_response :success
  end

  test "should update chemestry" do
    patch chemestry_url(@chemestry), params: { chemestry: { end_date: @chemestry.end_date, name: @chemestry.name, start_date: @chemestry.start_date, user_id: @chemestry.user_id } }
    assert_redirected_to chemestry_url(@chemestry)
  end

  test "should destroy chemestry" do
    assert_difference('Chemestry.count', -1) do
      delete chemestry_url(@chemestry)
    end

    assert_redirected_to chemestries_url
  end
end
