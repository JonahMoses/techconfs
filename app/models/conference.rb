class Conference < ActiveRecord::Base
  validates :name, presence: true
end
