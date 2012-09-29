require 'test_helper'

class StorageServicesControllerTest < ActionController::TestCase
  setup do
    @storage_service = storage_services(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:storage_services)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create storage_service" do
    assert_difference('StorageService.count') do
      post :create, storage_service: { kind: @storage_service.kind, name: @storage_service.name }
    end

    assert_redirected_to storage_service_path(assigns(:storage_service))
  end

  test "should show storage_service" do
    get :show, id: @storage_service
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @storage_service
    assert_response :success
  end

  test "should update storage_service" do
    put :update, id: @storage_service, storage_service: { kind: @storage_service.kind, name: @storage_service.name }
    assert_redirected_to storage_service_path(assigns(:storage_service))
  end

  test "should destroy storage_service" do
    assert_difference('StorageService.count', -1) do
      delete :destroy, id: @storage_service
    end

    assert_redirected_to storage_services_path
  end
end
