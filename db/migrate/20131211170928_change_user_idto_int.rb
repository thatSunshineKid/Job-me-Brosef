class ChangeUserIdtoInt < ActiveRecord::Migration
  def change
  	change_column :job_applications, :user_id, :integer
  end
end
