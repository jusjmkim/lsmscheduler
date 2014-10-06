class CreateJoinTableStudentSchedule < ActiveRecord::Migration
  def change
    create_join_table :students, :schedules do |t|
      t.index [:student_id, :schedule_id]
      t.index [:schedule_id, :student_id]
    end
  end
end
