require 'test_helper'

class RailsApiSortableTest < ActionController::TestCase
  tests ArtistsController
  
  setup do
    Artist.create(name: "foo")
    Artist.create(name: "bar")
  end

  teardown do
    Artist.delete_all
  end

  def json
    JSON.parse(response.body)
  end

  test "should order artists" do
    get :index, format: :json, sort: "name"
    assert_response :success
    assert_equal "bar", json.first["name"]
    assert_equal "foo", json.second["name"]
  end  

  test "should order artists ascending" do
    get :index, format: :json, sort: "name", sort_direction: "asc"
    assert_response :success
    assert_equal 2, json.length
    assert_equal "bar", json.first["name"]
    assert_equal "foo", json.second["name"]
  end

  test "should order artists descending" do
    get :index, format: :json, sort: "name", sort_direction: "desc"
    assert_response :success
    assert_equal 2, json.length
    assert_equal "foo", json.first["name"]
    assert_equal "bar", json.second["name"]
  end
end
