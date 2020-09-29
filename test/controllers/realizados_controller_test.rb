require 'test_helper'

class RealizadosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @realizado = realizados(:one)
  end

  test "should get index" do
    get realizados_url
    assert_response :success
  end

  test "should get new" do
    get new_realizado_url
    assert_response :success
  end

  test "should create realizado" do
    assert_difference('Realizado.count') do
      post realizados_url, params: { realizado: { descripcion: @realizado.descripcion, fecha_fina: @realizado.fecha_fina, fecha_ini: @realizado.fecha_ini, tarea_id: @realizado.tarea_id, tiempo: @realizado.tiempo } }
    end

    assert_redirected_to realizado_url(Realizado.last)
  end

  test "should show realizado" do
    get realizado_url(@realizado)
    assert_response :success
  end

  test "should get edit" do
    get edit_realizado_url(@realizado)
    assert_response :success
  end

  test "should update realizado" do
    patch realizado_url(@realizado), params: { realizado: { descripcion: @realizado.descripcion, fecha_fina: @realizado.fecha_fina, fecha_ini: @realizado.fecha_ini, tarea_id: @realizado.tarea_id, tiempo: @realizado.tiempo } }
    assert_redirected_to realizado_url(@realizado)
  end

  test "should destroy realizado" do
    assert_difference('Realizado.count', -1) do
      delete realizado_url(@realizado)
    end

    assert_redirected_to realizados_url
  end
end
