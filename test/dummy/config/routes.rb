Rails.application.routes.draw do
  mount CrudDelayedJobs::Engine => "/crud_delayed_jobs"
end
