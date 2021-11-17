require "test_helper"

class NikulogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @nikulog = nikulogs(:one)
  end

  test "should get index" do
    get nikulogs_url
    assert_response :success
  end

  test "should get new" do
    get new_nikulog_url
    assert_response :success
  end

  test "should create nikulog" do
    assert_difference('Nikulog.count') do
      post nikulogs_url, params: { nikulog: { nikudate: @nikulog.nikudate, nikumenu: @nikulog.nikumenu } }
    end

    assert_redirected_to nikulog_url(Nikulog.last)
  end

  test "should show nikulog" do
    get nikulog_url(@nikulog)
    assert_response :success
  end

  test "should get edit" do
    get edit_nikulog_url(@nikulog)
    assert_response :success
  end

  test "should update nikulog" do
    patch nikulog_url(@nikulog), params: { nikulog: { nikudate: @nikulog.nikudate, nikumenu: @nikulog.nikumenu } }
    assert_redirected_to nikulog_url(@nikulog)
  end

  test "should destroy nikulog" do
    assert_difference('Nikulog.count', -1) do
      delete nikulog_url(@nikulog)
    end

    assert_redirected_to nikulogs_url
  end
end
