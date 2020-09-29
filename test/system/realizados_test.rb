require "application_system_test_case"

class RealizadosTest < ApplicationSystemTestCase
  setup do
    @realizado = realizados(:one)
  end

  test "visiting the index" do
    visit realizados_url
    assert_selector "h1", text: "Realizados"
  end

  test "creating a Realizado" do
    visit realizados_url
    click_on "New Realizado"

    fill_in "Descripcion", with: @realizado.descripcion
    fill_in "Fecha fina", with: @realizado.fecha_fina
    fill_in "Fecha ini", with: @realizado.fecha_ini
    fill_in "Tarea", with: @realizado.tarea_id
    fill_in "Tiempo", with: @realizado.tiempo
    click_on "Create Realizado"

    assert_text "Realizado was successfully created"
    click_on "Back"
  end

  test "updating a Realizado" do
    visit realizados_url
    click_on "Edit", match: :first

    fill_in "Descripcion", with: @realizado.descripcion
    fill_in "Fecha fina", with: @realizado.fecha_fina
    fill_in "Fecha ini", with: @realizado.fecha_ini
    fill_in "Tarea", with: @realizado.tarea_id
    fill_in "Tiempo", with: @realizado.tiempo
    click_on "Update Realizado"

    assert_text "Realizado was successfully updated"
    click_on "Back"
  end

  test "destroying a Realizado" do
    visit realizados_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Realizado was successfully destroyed"
  end
end
