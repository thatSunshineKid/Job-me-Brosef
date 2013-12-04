class AddIndexToUser < ActiveRecord::Migration
  def change
    add_column :job_applications, :user_id, :string
  end
end
