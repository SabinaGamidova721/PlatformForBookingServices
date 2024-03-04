require "application_system_test_case"

class SpeciesTest < ApplicationSystemTestCase
  setup do
    @species = species(:one)
  end

  test "visiting the index" do
    visit species_url
    assert_selector "h1", text: "Species"
  end

  test "should create species" do
    visit species_url
    click_on "New species"

    fill_in "Species", with: @species.species_id
    fill_in "Title", with: @species.title
    fill_in "Type", with: @species.type
    click_on "Create Species"

    assert_text "Species was successfully created"
    click_on "Back"
  end

  test "should update Species" do
    visit species_url(@species)
    click_on "Edit this species", match: :first

    fill_in "Species", with: @species.species_id
    fill_in "Title", with: @species.title
    fill_in "Type", with: @species.type
    click_on "Update Species"

    assert_text "Species was successfully updated"
    click_on "Back"
  end

  test "should destroy Species" do
    visit species_url(@species)
    click_on "Destroy this species", match: :first

    assert_text "Species was successfully destroyed"
  end
end
