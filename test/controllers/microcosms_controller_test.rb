require 'test_helper'
require 'rails_autolink'

class MicrocosmsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @microcosm = microcosms(:one)
  end

  test "should get index" do
    get microcosms_url
    assert_response :success
  end

  test "should get new" do
    get new_microcosm_url
    assert_response :success
  end

  test "should create microcosm" do
    assert_difference('Microcosm.count') do
      post microcosms_url, params: { microcosm: { key: @microcosm.key, name: @microcosm.name } }
    end

    assert_redirected_to microcosm_url(Microcosm.last)
  end

  test "should show microcosm" do
    get microcosm_url(@microcosm)
    assert_response :success
  end

  test "should get edit" do
    get edit_microcosm_url(@microcosm)
    assert_response :success
  end

  test "should update microcosm" do
    patch microcosm_url(@microcosm), params: { microcosm: { key: @microcosm.key, name: @microcosm.name } }
    assert_redirected_to microcosm_url(@microcosm)
  end

  test "should destroy microcosm" do
    assert_difference('Microcosm.count', -1) do
      delete microcosm_url(@microcosm)
    end

    assert_redirected_to microcosms_url
  end
end
