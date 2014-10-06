class CreateJoinTableMajorStudent < ActiveRecord::Migration
  def change
    create_join_table :major, :students do |t|
      t.index [:major_id, :student_id]
      t.index [:student_id, :major_id]
    end
  end
end
