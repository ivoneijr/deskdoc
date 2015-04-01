require 'test_helper'

class UsersDocumentsControllerTest < ActionController::TestCase
  setup do
    @users_document = users_documents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users_documents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create users_document" do
    assert_difference('UsersDocument.count') do
      post :create, users_document: {  }
    end

    assert_redirected_to users_document_path(assigns(:users_document))
  end

  test "should show users_document" do
    get :show, id: @users_document
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @users_document
    assert_response :success
  end

  test "should update users_document" do
    patch :update, id: @users_document, users_document: {  }
    assert_redirected_to users_document_path(assigns(:users_document))
  end

  test "should destroy users_document" do
    assert_difference('UsersDocument.count', -1) do
      delete :destroy, id: @users_document
    end

    assert_redirected_to users_documents_path
  end
end
