require 'test_helper'

class DocsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @doc = docs(:one)
  end

  test "should get index" do
    get docs_url, as: :json
    assert_response :success
  end

  test "should create doc" do
    assert_difference('Doc.count') do
      post docs_url, params: { doc: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show doc" do
    get doc_url(@doc), as: :json
    assert_response :success
  end

  test "should update doc" do
    patch doc_url(@doc), params: { doc: {  } }, as: :json
    assert_response 200
  end

  test "should destroy doc" do
    assert_difference('Doc.count', -1) do
      delete doc_url(@doc), as: :json
    end

    assert_response 204
  end
end
