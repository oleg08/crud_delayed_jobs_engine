require "application_system_test_case"

module CrudDelayedJobs
  class DelayedJobsTest < ApplicationSystemTestCase
    setup do
      @delayed_job = crud_delayed_jobs_delayed_jobs(:one)
    end

    test "visiting the index" do
      visit delayed_jobs_url
      assert_selector "h1", text: "Delayed jobs"
    end

    test "should create delayed job" do
      visit delayed_jobs_url
      click_on "New delayed job"

      fill_in "Attempts", with: @delayed_job.attempts
      fill_in "Failed at", with: @delayed_job.failed_at
      fill_in "Handler", with: @delayed_job.handler
      fill_in "Last error", with: @delayed_job.last_error
      fill_in "Locked at", with: @delayed_job.locked_at
      fill_in "Locked by", with: @delayed_job.locked_by
      fill_in "Priority", with: @delayed_job.priority
      fill_in "Queue", with: @delayed_job.queue
      fill_in "Run at", with: @delayed_job.run_at
      click_on "Create Delayed job"

      assert_text "Delayed job was successfully created"
      click_on "Back"
    end

    test "should update Delayed job" do
      visit delayed_job_url(@delayed_job)
      click_on "Edit this delayed job", match: :first

      fill_in "Attempts", with: @delayed_job.attempts
      fill_in "Failed at", with: @delayed_job.failed_at
      fill_in "Handler", with: @delayed_job.handler
      fill_in "Last error", with: @delayed_job.last_error
      fill_in "Locked at", with: @delayed_job.locked_at
      fill_in "Locked by", with: @delayed_job.locked_by
      fill_in "Priority", with: @delayed_job.priority
      fill_in "Queue", with: @delayed_job.queue
      fill_in "Run at", with: @delayed_job.run_at
      click_on "Update Delayed job"

      assert_text "Delayed job was successfully updated"
      click_on "Back"
    end

    test "should destroy Delayed job" do
      visit delayed_job_url(@delayed_job)
      click_on "Destroy this delayed job", match: :first

      assert_text "Delayed job was successfully destroyed"
    end
  end
end
