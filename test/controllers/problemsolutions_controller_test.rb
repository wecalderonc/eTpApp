require 'test_helper'

class ProblemsolutionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @problemsolution = problemsolutions(:one)
  end

  test "should get index" do
    get problemsolutions_url
    assert_response :success
  end

  test "should get new" do
    get new_problemsolution_url
    assert_response :success
  end

  test "should create problemsolution" do
    assert_difference('Problemsolution.count') do
      post problemsolutions_url, params: { problemsolution: {  } }
    end

    assert_redirected_to problemsolution_url(Problemsolution.last)
  end

  test "should show problemsolution" do
    get problemsolution_url(@problemsolution)
    assert_response :success
  end

  test "should get edit" do
    get edit_problemsolution_url(@problemsolution)
    assert_response :success
  end

  test "should update problemsolution" do
    patch problemsolution_url(@problemsolution), params: { problemsolution: {  } }
    assert_redirected_to problemsolution_url(@problemsolution)
  end

  test "should destroy problemsolution" do
    assert_difference('Problemsolution.count', -1) do
      delete problemsolution_url(@problemsolution)
    end

    assert_redirected_to problemsolutions_url
  end
end
