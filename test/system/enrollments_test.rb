require "application_system_test_case"

class EnrollmentsTest < ApplicationSystemTestCase
  setup do
    @enrollment = enrollments(:one)
  end

  test "visiting the index" do
    visit enrollments_url
    assert_selector "h1", text: "Enrollments"
  end

  test "should create enrollment" do
    visit enrollments_url
    click_on "New enrollment"

    check "Completed" if @enrollment.completed
    fill_in "Course", with: @enrollment.course_id
    check "Graduate" if @enrollment.graduate
    fill_in "Pass score", with: @enrollment.pass_score
    fill_in "Progress", with: @enrollment.progress
    fill_in "Score", with: @enrollment.score
    fill_in "User", with: @enrollment.user_id
    click_on "Create Enrollment"

    assert_text "Enrollment was successfully created"
    click_on "Back"
  end

  test "should update Enrollment" do
    visit enrollment_url(@enrollment)
    click_on "Edit this enrollment", match: :first

    check "Completed" if @enrollment.completed
    fill_in "Course", with: @enrollment.course_id
    check "Graduate" if @enrollment.graduate
    fill_in "Pass score", with: @enrollment.pass_score
    fill_in "Progress", with: @enrollment.progress
    fill_in "Score", with: @enrollment.score
    fill_in "User", with: @enrollment.user_id
    click_on "Update Enrollment"

    assert_text "Enrollment was successfully updated"
    click_on "Back"
  end

  test "should destroy Enrollment" do
    visit enrollment_url(@enrollment)
    click_on "Destroy this enrollment", match: :first

    assert_text "Enrollment was successfully destroyed"
  end
end
