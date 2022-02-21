CrudDelayedJobs::Engine.routes.draw do
  root 'delayed_jobs#index'
  resources :delayed_jobs
end
