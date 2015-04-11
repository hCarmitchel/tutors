class Appointment < ActiveRecord::Base
  belongs_to :tutor, foreign_key: :user_id
  belongs_to :subject

  validates :title, presence: true
  validates :end_time, date: { after: :start_time, message: 'must be after the start time.' }
end
