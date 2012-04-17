require 'test_helper'

class ClosedfilesControllerTest < ActionController::TestCase
  setup do
    @closedfile = closedfiles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:closedfiles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create closedfile" do
    assert_difference('Closedfile.count') do
      post :create, closedfile: { atty_name: @closedfile.atty_name, client_name: @closedfile.client_name, cm_number: @closedfile.cm_number, destruction_date: @closedfile.destruction_date, file_number: @closedfile.file_number, matter_name: @closedfile.matter_name, scaned: @closedfile.scaned, wallet_qty: @closedfile.wallet_qty }
    end

    assert_redirected_to closedfile_path(assigns(:closedfile))
  end

  test "should show closedfile" do
    get :show, id: @closedfile
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @closedfile
    assert_response :success
  end

  test "should update closedfile" do
    put :update, id: @closedfile, closedfile: { atty_name: @closedfile.atty_name, client_name: @closedfile.client_name, cm_number: @closedfile.cm_number, destruction_date: @closedfile.destruction_date, file_number: @closedfile.file_number, matter_name: @closedfile.matter_name, scaned: @closedfile.scaned, wallet_qty: @closedfile.wallet_qty }
    assert_redirected_to closedfile_path(assigns(:closedfile))
  end

  test "should destroy closedfile" do
    assert_difference('Closedfile.count', -1) do
      delete :destroy, id: @closedfile
    end

    assert_redirected_to closedfiles_path
  end
end
