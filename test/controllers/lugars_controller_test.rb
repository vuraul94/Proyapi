require 'test_helper'

class LugarsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lugar = lugars(:one)
  end

  test "should get index" do
    get lugars_url, as: :json
    assert_response :success
  end

  test "should create lugar" do
    assert_difference('Lugar.count') do
      post lugars_url, params: { lugar: { descripcion: @lugar.descripcion, foto: @lugar.foto, nombre: @lugar.nombre } }, as: :json
    end

    assert_response 201
  end

  test "should show lugar" do
    get lugar_url(@lugar), as: :json
    assert_response :success
  end

  test "should update lugar" do
    patch lugar_url(@lugar), params: { lugar: { descripcion: @lugar.descripcion, foto: @lugar.foto, nombre: @lugar.nombre } }, as: :json
    assert_response 200
  end

  test "should destroy lugar" do
    assert_difference('Lugar.count', -1) do
      delete lugar_url(@lugar), as: :json
    end

    assert_response 204
  end
end
