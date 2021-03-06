class TutorsController < ApplicationController

  def index
    if params[:search]
      search = params[:search].downcase
      @tutors = Tutor.where(
        '(lower(first_name) LIKE ? OR lower(last_name) LIKE ? OR lower(school) LIKE ? OR subjects LIKE ? OR tutor_types LIKE ?) AND tutor is TRUE',
        "%#{search}%",
        "%#{search}%",
        "%#{search}%",
        "%#{search}%",
        "%#{search}%"
        )
    else
      @tutors = Tutor.where(tutor: true)
    end

    @tutors = @tutors.paginate(page: params[:page], per_page: 10).order('last_name ASC')
  end

  def show
    @tutor = Tutor.where(id: params[:id]).first
  end

  def calendar
  end
end
