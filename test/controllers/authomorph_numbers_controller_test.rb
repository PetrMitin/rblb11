require "test_helper"

class AuthomorphNumbersControllerTest < ActionDispatch::IntegrationTest
  test "responses should vary" do
    get authomorph_numbers_view_url + '.json', params: {n: 12}
    assert_response :success

    results = assigns[:results]

    get authomorph_numbers_view_url + '.json', params: {n: 100}
    assert_response :success

    assert_not_equal results, assigns[:results]
  end
end
