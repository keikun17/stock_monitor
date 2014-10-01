require 'test_helper'

class TemplateFieldsControllerTest < ActionController::TestCase
  setup do
    @template_field = template_fields(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:template_fields)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create template_field" do
    assert_difference('TemplateField.count') do
      post :create, template_field: { counter: @template_field.counter, name: @template_field.name, stock_template_id: @template_field.stock_template_id, unit: @template_field.unit }
    end

    assert_redirected_to template_field_path(assigns(:template_field))
  end

  test "should show template_field" do
    get :show, id: @template_field
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @template_field
    assert_response :success
  end

  test "should update template_field" do
    patch :update, id: @template_field, template_field: { counter: @template_field.counter, name: @template_field.name, stock_template_id: @template_field.stock_template_id, unit: @template_field.unit }
    assert_redirected_to template_field_path(assigns(:template_field))
  end

  test "should destroy template_field" do
    assert_difference('TemplateField.count', -1) do
      delete :destroy, id: @template_field
    end

    assert_redirected_to template_fields_path
  end
end
