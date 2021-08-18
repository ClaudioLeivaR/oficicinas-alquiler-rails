require "test_helper"

class OficinasControllerTest < ActionDispatch::IntegrationTest
  test "should get listar" do
    get oficinas_listar_url
    assert_response :success
  end
end
