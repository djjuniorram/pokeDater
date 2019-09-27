require "application_system_test_case"

class RendezvousTest < ApplicationSystemTestCase
  setup do
    @rendezvou = rendezvous(:one)
  end

  test "visiting the index" do
    visit rendezvous_url
    assert_selector "h1", text: "Rendezvous"
  end

  test "creating a Rendezvou" do
    visit rendezvous_url
    click_on "New Rendezvou"

    fill_in "Activity", with: @rendezvou.activity_id
    fill_in "Location", with: @rendezvou.location_id
    fill_in "Pet", with: @rendezvou.pet_id
    fill_in "Single pet", with: @rendezvou.single_pet_id
    click_on "Create Rendezvou"

    assert_text "Rendezvou was successfully created"
    click_on "Back"
  end

  test "updating a Rendezvou" do
    visit rendezvous_url
    click_on "Edit", match: :first

    fill_in "Activity", with: @rendezvou.activity_id
    fill_in "Location", with: @rendezvou.location_id
    fill_in "Pet", with: @rendezvou.pet_id
    fill_in "Single pet", with: @rendezvou.single_pet_id
    click_on "Update Rendezvou"

    assert_text "Rendezvou was successfully updated"
    click_on "Back"
  end

  test "destroying a Rendezvou" do
    visit rendezvous_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Rendezvou was successfully destroyed"
  end
end
