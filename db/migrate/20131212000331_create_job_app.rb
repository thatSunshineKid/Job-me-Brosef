class CreateJobApp < ActiveRecord::Migration
  def change
    create_table :job_applications do |t|
      t.string :company_name
      t.string :job_title
      t.string :contact
      t.boolean :cover_letter_completed
      t.boolean :resume_completed
      t.boolean :cover_letter_and_resume_sent
      t.boolean :company_response
      t.string :notes
      t.integer :user_id

      t.timestamps
    end
  end
end
