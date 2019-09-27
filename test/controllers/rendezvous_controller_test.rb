require 'test_helper'

class RendezvousControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rendezvou = rendezvous(:one)
  end

  test "should get index" do
    get rendezvous_url
    assert_response :success
  end

  test "should get new" do
    get new_rendezvou_url
    assert_response :success
  end

  test "should create rendezvou" do
    assert_difference('Rendezvou.count') do
      post rendezvous_url, params: { rendezvou: { activity_id: @rendezvou.activity_id, location_id: @rendezvou.location_id, pet_id: @rendezvou.pet_id, single_pet_id: @rendezvou.single_pet_id } }
    end

    assert_redirected_to rendezvou_url(Rendezvou.last)
  end

  test "should show rendezvou" do
    get rendezvou_url(@rendezvou)
    assert_response :success
  end

  test "should get edit" do
    get edit_rendezvou_url(@rendezvou)
    assert_response :success
  end

  test "should update rendezvou" do
    patch rendezvou_url(@rendezvou), params: { rendezvou: { activity_id: @rendezvou.activity_id, location_id: @rendezvou.location_id, pet_id: @rendezvou.pet_id, single_pet_id: @rendezvou.single_pet_id } }
    assert_redirected_to rendezvou_url(@rendezvou)
  end

  test "should destroy rendezvou" do
    assert_difference('Rendezvou.count', -1) do
      delete rendezvou_url(@rendezvou)
    end

    assert_redirected_to rendezvous_url
  end
end
