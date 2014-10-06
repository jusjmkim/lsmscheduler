class CreateJoinTableMajorRequirement < ActiveRecord::Migration
  def change
    create_join_table :major, :requirements do |t|
      t.index [:major_id, :requirement_id]
      t.index [:requirement_id, :major_id]
    end
  end
end
