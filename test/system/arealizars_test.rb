require "application_system_test_case"

class ArealizarsTest < ApplicationSystemTestCase
  setup do
    @arealizar = arealizars(:one)
  end

  test "visiting the index" do
    visit arealizars_url
    assert_selector "h1", text: "Arealizars"
  end

  test "creating a Arealizar" do
    visit arealizars_url
    click_on "New Arealizar"

    fill_in "Descripcion", with: @arealizar.descripcion
    fill_in "Fecha", with: @arealizar.fecha
    fill_in "Tiempo", with: @arealizar.tiempo
    click_on "Create Arealizar"

    assert_text "Arealizar was successfully created"
    click_on "Back"
  end

  test "updating a Arealizar" do
    visit arealizars_url
    click_on "Edit", match: :first

    fill_in "Descripcion", with: @arealizar.descripcion
    fill_in "Fecha", with: @arealizar.fecha
    fill_in "Tiempo", with: @arealizar.tiempo
    click_on "Update Arealizar"

    assert_text "Arealizar was successfully updated"
    click_on "Back"
  end

  test "destroying a Arealizar" do
    visit arealizars_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Arealizar was successfully destroyed"
  end
end
