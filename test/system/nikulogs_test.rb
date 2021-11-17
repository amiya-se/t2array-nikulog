require "application_system_test_case"

class NikulogsTest < ApplicationSystemTestCase
  setup do
    @nikulog = nikulogs(:one)
  end

  test "visiting the index" do
    visit nikulogs_url
    assert_selector "h1", text: "Nikulogs"
  end

  test "creating a Nikulog" do
    visit nikulogs_url
    click_on "New Nikulog"

    fill_in "Nikudate", with: @nikulog.nikudate
    fill_in "Nikumenu", with: @nikulog.nikumenu
    click_on "Create Nikulog"

    assert_text "Nikulog was successfully created"
    click_on "Back"
  end

  test "updating a Nikulog" do
    visit nikulogs_url
    click_on "Edit", match: :first

    fill_in "Nikudate", with: @nikulog.nikudate
    fill_in "Nikumenu", with: @nikulog.nikumenu
    click_on "Update Nikulog"

    assert_text "Nikulog was successfully updated"
    click_on "Back"
  end

  test "destroying a Nikulog" do
    visit nikulogs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Nikulog was successfully destroyed"
  end
end
