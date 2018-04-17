require 'test_helper'

class HomewordsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @homeword = homewords(:one)
  end

  test "should get index" do
    get homewords_url
    assert_response :success
  end

  test "should get new" do
    get new_homeword_url
    assert_response :success
  end

  test "should create homeword" do
    assert_difference('Homeword.count') do
      post homewords_url, params: { homeword: { deadline: @homeword.deadline, description: @homeword.description, subject_id: @homeword.subject_id, user_id: @homeword.user_id } }
    end

    assert_redirected_to homeword_url(Homeword.last)
  end

  test "should show homeword" do
    get homeword_url(@homeword)
    assert_response :success
  end

  test "should get edit" do
    get edit_homeword_url(@homeword)
    assert_response :success
  end

  test "should update homeword" do
    patch homeword_url(@homeword), params: { homeword: { deadline: @homeword.deadline, description: @homeword.description, subject_id: @homeword.subject_id, user_id: @homeword.user_id } }
    assert_redirected_to homeword_url(@homeword)
  end

  test "should destroy homeword" do
    assert_difference('Homeword.count', -1) do
      delete homeword_url(@homeword)
    end

    assert_redirected_to homewords_url
  end
end
