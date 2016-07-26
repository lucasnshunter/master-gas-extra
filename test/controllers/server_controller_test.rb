require 'test_helper'

class ServerControllerTest < ActionController::TestCase
  test "should get pagina_teste" do
    get :pagina_teste
    assert_response :success
  end

end
