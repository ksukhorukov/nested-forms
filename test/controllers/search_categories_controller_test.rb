require 'test_helper'

class SearchCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @search_category = search_categories(:one)
  end

  test "should get index" do
    get search_categories_url
    assert_response :success
  end

  test "should get new" do
    get new_search_category_url
    assert_response :success
  end

  test "should create search_category" do
    assert_difference('SearchCategory.count') do
      post search_categories_url, params: { search_category: {  } }
    end

    assert_redirected_to search_category_url(SearchCategory.last)
  end

  test "should show search_category" do
    get search_category_url(@search_category)
    assert_response :success
  end

  test "should get edit" do
    get edit_search_category_url(@search_category)
    assert_response :success
  end

  test "should update search_category" do
    patch search_category_url(@search_category), params: { search_category: {  } }
    assert_redirected_to search_category_url(@search_category)
  end

  test "should destroy search_category" do
    assert_difference('SearchCategory.count', -1) do
      delete search_category_url(@search_category)
    end

    assert_redirected_to search_categories_url
  end
end
