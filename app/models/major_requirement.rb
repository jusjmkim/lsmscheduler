class MajorRequirement < ActiveRecord::Base
  belongs_to :major
  belongs_to :requirement
end
