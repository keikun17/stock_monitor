require 'test_helper'

class StockFieldsControllerTest < ActionController::TestCase
  setup do
    @stock_field = stock_fields(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:stock_fields)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create stock_field" do
    assert_difference('StockField.count') do
      post :create, stock_field: { float_value: @stock_field.float_value, stock_id: @stock_field.stock_id, string_value: @stock_field.string_value, template_field_id: @stock_field.template_field_id, text_value: @stock_field.text_value }
    end

    assert_redirected_to stock_field_path(assigns(:stock_field))
  end

  test "should show stock_field" do
    get :show, id: @stock_field
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @stock_field
    assert_response :success
  end

  test "should update stock_field" do
    patch :update, id: @stock_field, stock_field: { float_value: @stock_field.float_value, stock_id: @stock_field.stock_id, string_value: @stock_field.string_value, template_field_id: @stock_field.template_field_id, text_value: @stock_field.text_value }
    assert_redirected_to stock_field_path(assigns(:stock_field))
  end

  test "should destroy stock_field" do
    assert_difference('StockField.count', -1) do
      delete :destroy, id: @stock_field
    end

    assert_redirected_to stock_fields_path
  end
end
