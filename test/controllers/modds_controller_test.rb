require 'test_helper'

class ModdsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @modd = modds(:one)
  end

  test "should get index" do
    get modds_url
    assert_response :success
  end

  test "should get new" do
    get new_modd_url
    assert_response :success
  end

  test "should create modd" do
    assert_difference('Modd.count') do
      post modds_url, params: { modd: { note: @modd.note, short: @modd.short } }
    end

    assert_redirected_to modd_url(Modd.last)
  end

  test "should show modd" do
    get modd_url(@modd)
    assert_response :success
  end

  test "should get edit" do
    get edit_modd_url(@modd)
    assert_response :success
  end

  test "should update modd" do
    patch modd_url(@modd), params: { modd: { note: @modd.note, short: @modd.short } }
    assert_redirected_to modd_url(@modd)
  end

  test "should destroy modd" do
    assert_difference('Modd.count', -1) do
      delete modd_url(@modd)
    end

    assert_redirected_to modds_url
  end
end
