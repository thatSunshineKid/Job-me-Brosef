class Waffle < ActiveRecord::Migration
  def up
 	sql = "ALTER TABLE job_applications ALTER COLUMN user_id SET DATA TYPE integer;"
 	ActiveRecord::Base.connection.execute(sql)
  end
end
