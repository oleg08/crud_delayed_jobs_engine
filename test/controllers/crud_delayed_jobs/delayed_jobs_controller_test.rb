require "test_helper"

module CrudDelayedJobs
  class DelayedJobsControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    setup do
      @delayed_job = crud_delayed_jobs_delayed_jobs(:one)
    end

    test "should get index" do
      get delayed_jobs_url
      assert_response :success
    end

    test "should get new" do
      get new_delayed_job_url
      assert_response :success
    end

    test "should create delayed_job" do
      assert_difference("DelayedJob.count") do
        post delayed_jobs_url, params: { delayed_job: { attempts: @delayed_job.attempts, failed_at: @delayed_job.failed_at, handler: @delayed_job.handler, last_error: @delayed_job.last_error, locked_at: @delayed_job.locked_at, locked_by: @delayed_job.locked_by, priority: @delayed_job.priority, queue: @delayed_job.queue, run_at: @delayed_job.run_at } }
      end

      assert_redirected_to delayed_job_url(DelayedJob.last)
    end

    test "should show delayed_job" do
      get delayed_job_url(@delayed_job)
      assert_response :success
    end

    test "should get edit" do
      get edit_delayed_job_url(@delayed_job)
      assert_response :success
    end

    test "should update delayed_job" do
      patch delayed_job_url(@delayed_job), params: { delayed_job: { attempts: @delayed_job.attempts, failed_at: @delayed_job.failed_at, handler: @delayed_job.handler, last_error: @delayed_job.last_error, locked_at: @delayed_job.locked_at, locked_by: @delayed_job.locked_by, priority: @delayed_job.priority, queue: @delayed_job.queue, run_at: @delayed_job.run_at } }
      assert_redirected_to delayed_job_url(@delayed_job)
    end

    test "should destroy delayed_job" do
      assert_difference("DelayedJob.count", -1) do
        delete delayed_job_url(@delayed_job)
      end

      assert_redirected_to delayed_jobs_url
    end
  end
end
