require 'test_helper'

class MasterControllerTest < ActionController::TestCase
  test "should get dashboart" do
    get :dashboart
    assert_response :success
  end

  test "should get pagina_teste" do
    get :pagina_teste
    assert_response :success
  end

end
