class Tutor < User
  has_many :appointments, foreign_key: :user_id
end
