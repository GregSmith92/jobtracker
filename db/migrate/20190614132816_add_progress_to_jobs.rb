class AddProgressToJobs < ActiveRecord::Migration[5.2]
  def change
    add_column :jobs, :progress, :string
  end
end
