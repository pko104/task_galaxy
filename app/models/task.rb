class Task < ActiveRecord::Base
  belongs_to :project
  has_one :user, through: :projects
  validates_uniqueness_of :user_id
end
