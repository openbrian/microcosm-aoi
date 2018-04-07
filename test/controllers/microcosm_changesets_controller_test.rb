require 'test_helper'

class MicrocosmChangesetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @microcosm_changeset = microcosm_changesets(:one)
  end

  test "should get index" do
    get microcosm_changesets_url
    assert_response :success
  end

  test "should get new" do
    get new_microcosm_changeset_url
    assert_response :success
  end

  test "should create microcosm_changeset" do
    assert_difference('MicrocosmChangeset.count') do
      post microcosm_changesets_url, params: { microcosm_changeset: { changeset_id: @microcosm_changeset.changeset_id, microcosm_id: @microcosm_changeset.microcosm_id, review_num: @microcosm_changeset.review_num } }
    end

    assert_redirected_to microcosm_changeset_url(MicrocosmChangeset.last)
  end

  test "should show microcosm_changeset" do
    get microcosm_changeset_url(@microcosm_changeset)
    assert_response :success
  end

  test "should get edit" do
    get edit_microcosm_changeset_url(@microcosm_changeset)
    assert_response :success
  end

  test "should update microcosm_changeset" do
    patch microcosm_changeset_url(@microcosm_changeset), params: { microcosm_changeset: { changeset_id: @microcosm_changeset.changeset_id, microcosm_id: @microcosm_changeset.microcosm_id, review_num: @microcosm_changeset.review_num } }
    assert_redirected_to microcosm_changeset_url(@microcosm_changeset)
  end

  test "should destroy microcosm_changeset" do
    assert_difference('MicrocosmChangeset.count', -1) do
      delete microcosm_changeset_url(@microcosm_changeset)
    end

    assert_redirected_to microcosm_changesets_url
  end
end
