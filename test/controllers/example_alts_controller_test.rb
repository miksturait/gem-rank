require 'test_helper'

class ExampleAltsControllerTest < ActionController::TestCase
  setup do
    @example_alt = example_alts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:example_alts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create example_alt" do
    assert_difference('ExampleAlt.count') do
      post :create, example_alt: { description: @example_alt.description, example_id: @example_alt.example_id, rank: @example_alt.rank, user_id: @example_alt.user_id, votes: @example_alt.votes }
    end

    assert_redirected_to example_alt_path(assigns(:example_alt))
  end

  test "should show example_alt" do
    get :show, id: @example_alt
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @example_alt
    assert_response :success
  end

  test "should update example_alt" do
    patch :update, id: @example_alt, example_alt: { description: @example_alt.description, example_id: @example_alt.example_id, rank: @example_alt.rank, user_id: @example_alt.user_id, votes: @example_alt.votes }
    assert_redirected_to example_alt_path(assigns(:example_alt))
  end

  test "should destroy example_alt" do
    assert_difference('ExampleAlt.count', -1) do
      delete :destroy, id: @example_alt
    end

    assert_redirected_to example_alts_path
  end
end
