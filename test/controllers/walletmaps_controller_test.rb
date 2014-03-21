require 'test_helper'

class WalletmapsControllerTest < ActionController::TestCase
  setup do
    @walletmap = walletmaps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:walletmaps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create walletmap" do
    assert_difference('Walletmap.count') do
      post :create, walletmap: { address: @walletmap.address, address_type: @walletmap.address_type, wallet: @walletmap.wallet }
    end

    assert_redirected_to walletmap_path(assigns(:walletmap))
  end

  test "should show walletmap" do
    get :show, id: @walletmap
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @walletmap
    assert_response :success
  end

  test "should update walletmap" do
    patch :update, id: @walletmap, walletmap: { address: @walletmap.address, address_type: @walletmap.address_type, wallet: @walletmap.wallet }
    assert_redirected_to walletmap_path(assigns(:walletmap))
  end

  test "should destroy walletmap" do
    assert_difference('Walletmap.count', -1) do
      delete :destroy, id: @walletmap
    end

    assert_redirected_to walletmaps_path
  end
end
