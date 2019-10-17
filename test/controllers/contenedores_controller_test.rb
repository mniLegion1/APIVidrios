require 'test_helper'

class ContenedoresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contenedore = contenedores(:one)
  end

  test "should get index" do
    get contenedores_url, as: :json
    assert_response :success
  end

  test "should create contenedore" do
    assert_difference('Contenedore.count') do
      post contenedores_url, params: { contenedore: { cantidadKg: @contenedore.cantidadKg, fecha: @contenedore.fecha, hora: @contenedore.hora } }, as: :json
    end

    assert_response 201
  end

  test "should show contenedore" do
    get contenedore_url(@contenedore), as: :json
    assert_response :success
  end

  test "should update contenedore" do
    patch contenedore_url(@contenedore), params: { contenedore: { cantidadKg: @contenedore.cantidadKg, fecha: @contenedore.fecha, hora: @contenedore.hora } }, as: :json
    assert_response 200
  end

  test "should destroy contenedore" do
    assert_difference('Contenedore.count', -1) do
      delete contenedore_url(@contenedore), as: :json
    end

    assert_response 204
  end
end
