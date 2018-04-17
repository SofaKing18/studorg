require 'test_helper'

class LectureHallsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lecture_hall = lecture_halls(:one)
  end

  test "should get index" do
    get lecture_halls_url
    assert_response :success
  end

  test "should get new" do
    get new_lecture_hall_url
    assert_response :success
  end

  test "should create lecture_hall" do
    assert_difference('LectureHall.count') do
      post lecture_halls_url, params: { lecture_hall: { description: @lecture_hall.description, name: @lecture_hall.name, user_id: @lecture_hall.user_id } }
    end

    assert_redirected_to lecture_hall_url(LectureHall.last)
  end

  test "should show lecture_hall" do
    get lecture_hall_url(@lecture_hall)
    assert_response :success
  end

  test "should get edit" do
    get edit_lecture_hall_url(@lecture_hall)
    assert_response :success
  end

  test "should update lecture_hall" do
    patch lecture_hall_url(@lecture_hall), params: { lecture_hall: { description: @lecture_hall.description, name: @lecture_hall.name, user_id: @lecture_hall.user_id } }
    assert_redirected_to lecture_hall_url(@lecture_hall)
  end

  test "should destroy lecture_hall" do
    assert_difference('LectureHall.count', -1) do
      delete lecture_hall_url(@lecture_hall)
    end

    assert_redirected_to lecture_halls_url
  end
end
