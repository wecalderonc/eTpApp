require "application_system_test_case"

class ProblemsolutionsTest < ApplicationSystemTestCase
  setup do
    @problemsolution = problemsolutions(:one)
  end

  test "visiting the index" do
    visit problemsolutions_url
    assert_selector "h1", text: "Problemsolutions"
  end

  test "creating a Problemsolution" do
    visit problemsolutions_url
    click_on "New Problemsolution"

    click_on "Create Problemsolution"

    assert_text "Problemsolution was successfully created"
    click_on "Back"
  end

  test "updating a Problemsolution" do
    visit problemsolutions_url
    click_on "Edit", match: :first

    click_on "Update Problemsolution"

    assert_text "Problemsolution was successfully updated"
    click_on "Back"
  end

  test "destroying a Problemsolution" do
    visit problemsolutions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Problemsolution was successfully destroyed"
  end
end
