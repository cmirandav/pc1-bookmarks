require 'test_helper'

class BmarksControllerTest < ActionController::TestCase
  setup do
    @bmark = bmarks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bmarks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bmark" do
    assert_difference('Bmark.count') do
      post :create, bmark: { reference: @bmark.reference, url: @bmark.url }
    end

    assert_redirected_to bmark_path(assigns(:bmark))
  end

  test "should show bmark" do
    get :show, id: @bmark
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bmark
    assert_response :success
  end

  test "should update bmark" do
    patch :update, id: @bmark, bmark: { reference: @bmark.reference, url: @bmark.url }
    assert_redirected_to bmark_path(assigns(:bmark))
  end

  test "should destroy bmark" do
    assert_difference('Bmark.count', -1) do
      delete :destroy, id: @bmark
    end

    assert_redirected_to bmarks_path
  end
end
