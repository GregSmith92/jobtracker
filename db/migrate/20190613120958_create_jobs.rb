class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|
      t.references :user, foreign_key: true
      t.string :title
      t.string :company
      t.integer :salary
      t.integer :desire
      t.datetime :date_applied
      t.string :person_of_contact
      t.string :link_to_job

      t.timestamps
    end
  end
end
