require 'test_helper'

class QsControllerTest < ActionController::TestCase
  setup do
    @q = qs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:qs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create q" do
    assert_difference('Q.count') do
      post :create, q: { order: @q.order, quiz_id: @q.quiz_id, title: @q.title }
    end

    assert_redirected_to q_path(assigns(:q))
  end

  test "should show q" do
    get :show, id: @q
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @q
    assert_response :success
  end

  test "should update q" do
    patch :update, id: @q, q: { order: @q.order, quiz_id: @q.quiz_id, title: @q.title }
    assert_redirected_to q_path(assigns(:q))
  end

  test "should destroy q" do
    assert_difference('Q.count', -1) do
      delete :destroy, id: @q
    end

    assert_redirected_to qs_path
  end
end
