require "test_helper"

class Reward2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @reward2 = reward2s(:one)
  end

  test "should get index" do
    get reward2s_url
    assert_response :success
  end

  test "should get new" do
    get new_reward2_url
    assert_response :success
  end

  test "should create reward2" do
    assert_difference('Reward2.count') do
      post reward2s_url, params: { reward2: { price: @reward2.price, reward: @reward2.reward, status: @reward2.status, value: @reward2.value } }
    end

    assert_redirected_to reward2_url(Reward2.last)
  end

  test "should show reward2" do
    get reward2_url(@reward2)
    assert_response :success
  end

  test "should get edit" do
    get edit_reward2_url(@reward2)
    assert_response :success
  end

  test "should update reward2" do
    patch reward2_url(@reward2), params: { reward2: { price: @reward2.price, reward: @reward2.reward, status: @reward2.status, value: @reward2.value } }
    assert_redirected_to reward2_url(@reward2)
  end

  test "should destroy reward2" do
    assert_difference('Reward2.count', -1) do
      delete reward2_url(@reward2)
    end

    assert_redirected_to reward2s_url
  end
end
