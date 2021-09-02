require 'test_helper'

class FrinedsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @frined = frineds(:one)
  end

  test "should get index" do
    get frineds_url
    assert_response :success
  end

  test "should get new" do
    get new_frined_url
    assert_response :success
  end

  test "should create frined" do
    assert_difference('Frined.count') do
      post frineds_url, params: { frined: { email: @frined.email, first_name: @frined.first_name, last_name: @frined.last_name, phone: @frined.phone, twitter: @frined.twitter } }
    end

    assert_redirected_to frined_url(Frined.last)
  end

  test "should show frined" do
    get frined_url(@frined)
    assert_response :success
  end

  test "should get edit" do
    get edit_frined_url(@frined)
    assert_response :success
  end

  test "should update frined" do
    patch frined_url(@frined), params: { frined: { email: @frined.email, first_name: @frined.first_name, last_name: @frined.last_name, phone: @frined.phone, twitter: @frined.twitter } }
    assert_redirected_to frined_url(@frined)
  end

  test "should destroy frined" do
    assert_difference('Frined.count', -1) do
      delete frined_url(@frined)
    end

    assert_redirected_to frineds_url
  end
end
