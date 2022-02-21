class CreateCrudDelayedJobsDelayedJobs < ActiveRecord::Migration[7.0]
  def change
    create_table :crud_delayed_jobs_delayed_jobs do |t|
      t.integer :priority, default: 0, null: false
      t.integer :attempts, default: 0, null: false
      t.text :handler, null: false
      t.text :last_error
      t.datetime :run_at
      t.datetime :locked_at
      t.datetime :failed_at
      t.string :locked_by
      t.string :queue

      t.timestamps null: true
    end

    add_index :crud_delayed_jobs_delayed_jobs, [:priority, :run_at], name: "delayed_jobs_priority"
  end
end
