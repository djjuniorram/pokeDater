require 'test_helper'

class SinglePetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @single_pet = single_pets(:one)
  end

  test "should get index" do
    get single_pets_url
    assert_response :success
  end

  test "should get new" do
    get new_single_pet_url
    assert_response :success
  end

  test "should create single_pet" do
    assert_difference('SinglePet.count') do
      post single_pets_url, params: { single_pet: { dislikes: @single_pet.dislikes, img_url: @single_pet.img_url, likes: @single_pet.likes, name: @single_pet.name, nickname: @single_pet.nickname, partner_id: @single_pet.partner_id, single: @single_pet.single, species: @single_pet.species, element_type: @single_pet.element_type } }
    end

    assert_redirected_to single_pet_url(SinglePet.last)
  end

  test "should show single_pet" do
    get single_pet_url(@single_pet)
    assert_response :success
  end

  test "should get edit" do
    get edit_single_pet_url(@single_pet)
    assert_response :success
  end

  test "should update single_pet" do
    patch single_pet_url(@single_pet), params: { single_pet: { dislikes: @single_pet.dislikes, img_url: @single_pet.img_url, likes: @single_pet.likes, name: @single_pet.name, nickname: @single_pet.nickname, partner_id: @single_pet.partner_id, single: @single_pet.single, species: @single_pet.species, element_type: @single_pet.element_type } }
    assert_redirected_to single_pet_url(@single_pet)
  end

  test "should destroy single_pet" do
    assert_difference('SinglePet.count', -1) do
      delete single_pet_url(@single_pet)
    end

    assert_redirected_to single_pets_url
  end
end
