require 'test_helper'

class StockTemplatesControllerTest < ActionController::TestCase
  setup do
    @stock_template = stock_templates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:stock_templates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create stock_template" do
    assert_difference('StockTemplate.count') do
      post :create, stock_template: { name: @stock_template.name }
    end

    assert_redirected_to stock_template_path(assigns(:stock_template))
  end

  test "should show stock_template" do
    get :show, id: @stock_template
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @stock_template
    assert_response :success
  end

  test "should update stock_template" do
    patch :update, id: @stock_template, stock_template: { name: @stock_template.name }
    assert_redirected_to stock_template_path(assigns(:stock_template))
  end

  test "should destroy stock_template" do
    assert_difference('StockTemplate.count', -1) do
      delete :destroy, id: @stock_template
    end

    assert_redirected_to stock_templates_path
  end
end
