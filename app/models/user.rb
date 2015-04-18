class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  serialize :subjects
  serialize :tutor_types

  scope :tutor, -> { where(tutor: true) }

  validates :first_name, presence: true
  validates :last_name, presence: true

  def tutoring_types
    tutor_types.delete_if(&:empty?).join(', ')
  end

  def name
    "#{first_name.capitalize} #{last_name.capitalize}"
  end

  def all_subjects
    user_subjects = []
    if subjects.present?
      Subject.all.each do |subject|
        user_subjects << subject.name.capitalize if subjects.map(&:downcase).include? subject.name.downcase
      end
    end
    user_subjects
  end
end
