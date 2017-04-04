require 'test_helper'

class Api::PotatosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @api_potato = api_potatos(:one)
  end

  test "should get index" do
    get api_potatos_url
    assert_response :success
  end

  test "should get new" do
    get new_api_potato_url
    assert_response :success
  end

  test "should create api_potato" do
    assert_difference('Api::Potato.count') do
      post api_potatos_url, params: { api_potato: { image: @api_potato.image, name: @api_potato.name, variety: @api_potato.variety } }
    end

    assert_redirected_to api_potato_url(Api::Potato.last)
  end

  test "should show api_potato" do
    get api_potato_url(@api_potato)
    assert_response :success
  end

  test "should get edit" do
    get edit_api_potato_url(@api_potato)
    assert_response :success
  end

  test "should update api_potato" do
    patch api_potato_url(@api_potato), params: { api_potato: { image: @api_potato.image, name: @api_potato.name, variety: @api_potato.variety } }
    assert_redirected_to api_potato_url(@api_potato)
  end

  test "should destroy api_potato" do
    assert_difference('Api::Potato.count', -1) do
      delete api_potato_url(@api_potato)
    end

    assert_redirected_to api_potatos_url
  end
end
