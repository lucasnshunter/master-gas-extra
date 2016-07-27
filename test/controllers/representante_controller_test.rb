require 'test_helper'

class RepresentanteControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get pagina_teste" do
    get :pagina_teste
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get relatorio" do
    get :relatorio
    assert_response :success
  end

end
