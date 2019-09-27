require "application_system_test_case"

class SinglePetsTest < ApplicationSystemTestCase
  setup do
    @single_pet = single_pets(:one)
  end

  test "visiting the index" do
    visit single_pets_url
    assert_selector "h1", text: "Single Pets"
  end

  test "creating a Single pet" do
    visit single_pets_url
    click_on "New Single Pet"

    fill_in "Dislikes", with: @single_pet.dislikes
    fill_in "Img url", with: @single_pet.img_url
    fill_in "Likes", with: @single_pet.likes
    fill_in "Name", with: @single_pet.name
    fill_in "Nickname", with: @single_pet.nickname
    fill_in "Partner", with: @single_pet.partner_id
    check "Single" if @single_pet.single
    fill_in "Species", with: @single_pet.species
    fill_in "Element Type", with: @single_pet.element_type
    click_on "Create Single pet"

    assert_text "Single pet was successfully created"
    click_on "Back"
  end

  test "updating a Single pet" do
    visit single_pets_url
    click_on "Edit", match: :first

    fill_in "Dislikes", with: @single_pet.dislikes
    fill_in "Img url", with: @single_pet.img_url
    fill_in "Likes", with: @single_pet.likes
    fill_in "Name", with: @single_pet.name
    fill_in "Nickname", with: @single_pet.nickname
    fill_in "Partner", with: @single_pet.partner_id
    check "Single" if @single_pet.single
    fill_in "Species", with: @single_pet.species
    fill_in "Element Type", with: @single_pet.element_type
    click_on "Update Single pet"

    assert_text "Single pet was successfully updated"
    click_on "Back"
  end

  test "destroying a Single pet" do
    visit single_pets_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Single pet was successfully destroyed"
  end
end
