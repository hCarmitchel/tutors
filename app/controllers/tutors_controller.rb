class TutorsController < ApplicationController

  def index
    if params[:search]
      search = params[:search]
      @tutors = User.where(
        '(first_name LIKE ? OR last_name LIKE ? OR school LIKE ? OR subjects LIKE ? OR tutor_types LIKE ?) AND tutor is TRUE',
        "%#{search}%",
        "%#{search}%",
        "%#{search}%",
        "%#{search}%",
        "%#{search}%"
        )
    else
      @tutors = User.tutor
    end

    @tutors = @tutors.paginate(page: params[:page], per_page: 10).order('last_name ASC')
  end

  def show
    @tutor = User.tutor.where(id: params[:id]).first
  end

  def calendar
  end
end
