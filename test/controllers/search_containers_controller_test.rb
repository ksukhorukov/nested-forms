require 'test_helper'

class SearchContainersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @search_container = search_containers(:one)
  end

  test "should get index" do
    get search_containers_url
    assert_response :success
  end

  test "should get new" do
    get new_search_container_url
    assert_response :success
  end

  test "should create search_container" do
    assert_difference('SearchContainer.count') do
      post search_containers_url, params: { search_container: {  } }
    end

    assert_redirected_to search_container_url(SearchContainer.last)
  end

  test "should show search_container" do
    get search_container_url(@search_container)
    assert_response :success
  end

  test "should get edit" do
    get edit_search_container_url(@search_container)
    assert_response :success
  end

  test "should update search_container" do
    patch search_container_url(@search_container), params: { search_container: {  } }
    assert_redirected_to search_container_url(@search_container)
  end

  test "should destroy search_container" do
    assert_difference('SearchContainer.count', -1) do
      delete search_container_url(@search_container)
    end

    assert_redirected_to search_containers_url
  end
end
