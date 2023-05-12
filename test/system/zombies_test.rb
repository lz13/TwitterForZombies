require "application_system_test_case"

class ZombiesTest < ApplicationSystemTestCase
  setup do
    @zombie = zombies(:one)
  end

  test "visiting the index" do
    visit zombies_url
    assert_selector "h1", text: "Zombies"
  end

  test "should create zombie" do
    visit zombies_url
    click_on "New zombie"

    fill_in "Age", with: @zombie.age
    fill_in "Bio", with: @zombie.bio
    fill_in "Name", with: @zombie.name
    click_on "Create Zombie"

    assert_text "Zombie was successfully created"
    click_on "Back"
  end

  test "should update Zombie" do
    visit zombie_url(@zombie)
    click_on "Edit this zombie", match: :first

    fill_in "Age", with: @zombie.age
    fill_in "Bio", with: @zombie.bio
    fill_in "Name", with: @zombie.name
    click_on "Update Zombie"

    assert_text "Zombie was successfully updated"
    click_on "Back"
  end

  test "should destroy Zombie" do
    visit zombie_url(@zombie)
    click_on "Destroy this zombie", match: :first

    assert_text "Zombie was successfully destroyed"
  end
end
