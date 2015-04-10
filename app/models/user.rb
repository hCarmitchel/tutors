class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  serialize :subjects
  serialize :tutor_types

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
