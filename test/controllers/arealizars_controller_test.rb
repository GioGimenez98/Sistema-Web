require 'test_helper'

class ArealizarsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @arealizar = arealizars(:one)
  end

  test "should get index" do
    get arealizars_url
    assert_response :success
  end

  test "should get new" do
    get new_arealizar_url
    assert_response :success
  end

  test "should create arealizar" do
    assert_difference('Arealizar.count') do
      post arealizars_url, params: { arealizar: { descripcion: @arealizar.descripcion, fecha: @arealizar.fecha, tiempo: @arealizar.tiempo } }
    end

    assert_redirected_to arealizar_url(Arealizar.last)
  end

  test "should show arealizar" do
    get arealizar_url(@arealizar)
    assert_response :success
  end

  test "should get edit" do
    get edit_arealizar_url(@arealizar)
    assert_response :success
  end

  test "should update arealizar" do
    patch arealizar_url(@arealizar), params: { arealizar: { descripcion: @arealizar.descripcion, fecha: @arealizar.fecha, tiempo: @arealizar.tiempo } }
    assert_redirected_to arealizar_url(@arealizar)
  end

  test "should destroy arealizar" do
    assert_difference('Arealizar.count', -1) do
      delete arealizar_url(@arealizar)
    end

    assert_redirected_to arealizars_url
  end
end
