class Appointment < ActiveRecord::Base
  belongs_to :tutor, foreign_key: :user_id
  belongs_to :subject

  validates :title, :end_time, :start_time, presence: true
  validates :end_time, date: { after: :start_time, message: 'must be after the start time.' }

  validate :capacity_positive, :capacity_allowable

  def start_date
    start_time.strftime('%m/%d/%y %I:%M %p')
  end

  def end_date
    end_time.strftime('%m/%d/%y %I:%M %p')
  end

  def date
    "#{start_date} - #{end_date}"
  end

  def capacity_positive
    if self.capacity <= 0
      errors.add(:capacity, 'must be at least 1')
      return false
    end
    true
  end

  def capacity_allowable
    if self.current_capacity > capacity
      errors.add(:current_capacity, 'may not be larger than capacity')
      return false
    end
    true
  end
end
