require 'test_helper'

class StudyMemosControllerTest < ActionController::TestCase
  setup do
    @study_memo = study_memos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:study_memos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create study_memo" do
    assert_difference('StudyMemo.count') do
      post :create, study_memo: { book_id: @study_memo.book_id, note: @study_memo.note, study_state: @study_memo.study_state }
    end

    assert_redirected_to study_memo_path(assigns(:study_memo))
  end

  test "should show study_memo" do
    get :show, id: @study_memo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @study_memo
    assert_response :success
  end

  test "should update study_memo" do
    put :update, id: @study_memo, study_memo: { book_id: @study_memo.book_id, note: @study_memo.note, study_state: @study_memo.study_state }
    assert_redirected_to study_memo_path(assigns(:study_memo))
  end

  test "should destroy study_memo" do
    assert_difference('StudyMemo.count', -1) do
      delete :destroy, id: @study_memo
    end

    assert_redirected_to study_memos_path
  end
end
