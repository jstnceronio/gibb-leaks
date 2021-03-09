require "test_helper"

class TopicsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @topic = topics(:one)
  end

  test "should get index" do
    get topics_url, as: :json
    assert_response :success
  end

  test "should create topic" do
    assert_difference('Topic.count') do
      post topics_url, params: { topic: { name: @topic.name, user_id: @topic.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show topic" do
    get topic_url(@topic), as: :json
    assert_response :success
  end

  test "should update topic" do
    patch topic_url(@topic), params: { topic: { name: @topic.name, user_id: @topic.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy topic" do
    assert_difference('Topic.count', -1) do
      delete topic_url(@topic), as: :json
    end

    assert_response 204
  end
end
