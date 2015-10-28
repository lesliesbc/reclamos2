require 'test_helper'

class ReclamosControllerTest < ActionController::TestCase
  setup do
    @reclamo = reclamos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:reclamos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create reclamo" do
    assert_difference('Reclamo.count') do
      post :create, reclamo: { cliente: @reclamo.cliente, empresa: @reclamo.empresa, reclamo: @reclamo.reclamo, rut_cliente_id: @reclamo.rut_cliente_id }
    end

    assert_redirected_to reclamo_path(assigns(:reclamo))
  end

  test "should show reclamo" do
    get :show, id: @reclamo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @reclamo
    assert_response :success
  end

  test "should update reclamo" do
    patch :update, id: @reclamo, reclamo: { cliente: @reclamo.cliente, empresa: @reclamo.empresa, reclamo: @reclamo.reclamo, rut_cliente_id: @reclamo.rut_cliente_id }
    assert_redirected_to reclamo_path(assigns(:reclamo))
  end

  test "should destroy reclamo" do
    assert_difference('Reclamo.count', -1) do
      delete :destroy, id: @reclamo
    end

    assert_redirected_to reclamos_path
  end
end
