require "test_helper"

class TestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @test = tests(:one)
  end

  test "should get index" do
    get tests_url, as: :json
    assert_response :success
  end

  test "should create test" do
    assert_difference('Test.count') do
      post tests_url, params: { test: { date: @test.date, title: @test.title, topic_id: @test.topic_id, user_id: @test.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show test" do
    get test_url(@test), as: :json
    assert_response :success
  end

  test "should update test" do
    patch test_url(@test), params: { test: { date: @test.date, title: @test.title, topic_id: @test.topic_id, user_id: @test.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy test" do
    assert_difference('Test.count', -1) do
      delete test_url(@test), as: :json
    end

    assert_response 204
  end
end
