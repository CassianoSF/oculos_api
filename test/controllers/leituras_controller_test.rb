require 'test_helper'

class LeiturasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @leitura = leituras(:one)
  end

  test "should get index" do
    get leituras_url, as: :json
    assert_response :success
  end

  test "should create leitura" do
    assert_difference('Leitura.count') do
      post leituras_url, params: { leitura: { valor: @leitura.valor } }, as: :json
    end

    assert_response 201
  end

  test "should show leitura" do
    get leitura_url(@leitura), as: :json
    assert_response :success
  end

  test "should update leitura" do
    patch leitura_url(@leitura), params: { leitura: { valor: @leitura.valor } }, as: :json
    assert_response 200
  end

  test "should destroy leitura" do
    assert_difference('Leitura.count', -1) do
      delete leitura_url(@leitura), as: :json
    end

    assert_response 204
  end
end
