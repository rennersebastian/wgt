require 'test_helper'

class WgsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @wg = wgs(:one)
  end

  test "should get index" do
    get wgs_url
    assert_response :success
  end

  test "should get new" do
    get new_wg_url
    assert_response :success
  end

  test "should create wg" do
    assert_difference('Wg.count') do
      post wgs_url, params: { wg: { name: @wg.name } }
    end

    assert_redirected_to wg_url(Wg.last)
  end

  test "should show wg" do
    get wg_url(@wg)
    assert_response :success
  end

  test "should get edit" do
    get edit_wg_url(@wg)
    assert_response :success
  end

  test "should update wg" do
    patch wg_url(@wg), params: { wg: { name: @wg.name } }
    assert_redirected_to wg_url(@wg)
  end

  test "should destroy wg" do
    assert_difference('Wg.count', -1) do
      delete wg_url(@wg)
    end

    assert_redirected_to wgs_url
  end
end
