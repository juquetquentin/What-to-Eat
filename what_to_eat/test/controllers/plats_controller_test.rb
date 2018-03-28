require 'test_helper'

class PlatsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @plat = plats(:one)
  end

  test "should get index" do
    get plats_url
    assert_response :success
  end

  test "should get new" do
    get new_plat_url
    assert_response :success
  end

  test "should create plat" do
    assert_difference('Plat.count') do
      post plats_url, params: { plat: { day: @plat.day, name: @plat.name, picture: @plat.picture, price: @plat.price } }
    end

    assert_redirected_to plat_url(Plat.last)
  end

  test "should show plat" do
    get plat_url(@plat)
    assert_response :success
  end

  test "should get edit" do
    get edit_plat_url(@plat)
    assert_response :success
  end

  test "should update plat" do
    patch plat_url(@plat), params: { plat: { day: @plat.day, name: @plat.name, picture: @plat.picture, price: @plat.price } }
    assert_redirected_to plat_url(@plat)
  end

  test "should destroy plat" do
    assert_difference('Plat.count', -1) do
      delete plat_url(@plat)
    end

    assert_redirected_to plats_url
  end
end
