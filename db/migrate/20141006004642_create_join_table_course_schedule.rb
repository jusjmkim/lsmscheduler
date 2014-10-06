class CreateJoinTableCourseSchedule < ActiveRecord::Migration
  def change
    create_join_table :course, :schedules do |t|
      t.index [:schedule_id, :course_id]
      t.index [:course_id, :schedule_id]
    end
  end
end
