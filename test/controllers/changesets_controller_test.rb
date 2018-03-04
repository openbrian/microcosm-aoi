require 'test_helper'

class ChangesetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @changeset = changesets(:one)
  end

  test "should get index" do
    get changesets_url
    assert_response :success
  end

  test "should get new" do
    get new_changeset_url
    assert_response :success
  end

  test "should create changeset" do
    assert_difference('Changeset.count') do
      post changesets_url, params: { changeset: { closed_at: @changeset.closed_at, created_at: @changeset.created_at, max_lat: @changeset.max_lat, max_lon: @changeset.max_lon, min_lat: @changeset.min_lat, min_lon: @changeset.min_lon, num_changes: @changeset.num_changes, user_id: @changeset.user_id } }
    end

    assert_redirected_to changeset_url(Changeset.last)
  end

  test "should show changeset" do
    get changeset_url(@changeset)
    assert_response :success
  end

  test "should get edit" do
    get edit_changeset_url(@changeset)
    assert_response :success
  end

  test "should update changeset" do
    patch changeset_url(@changeset), params: { changeset: { closed_at: @changeset.closed_at, created_at: @changeset.created_at, max_lat: @changeset.max_lat, max_lon: @changeset.max_lon, min_lat: @changeset.min_lat, min_lon: @changeset.min_lon, num_changes: @changeset.num_changes, user_id: @changeset.user_id } }
    assert_redirected_to changeset_url(@changeset)
  end

  test "should destroy changeset" do
    assert_difference('Changeset.count', -1) do
      delete changeset_url(@changeset)
    end

    assert_redirected_to changesets_url
  end
end
