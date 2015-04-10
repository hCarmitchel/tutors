class TutorsController < ApplicationController

  def index
    if params[:search]
      search = params[:search]
      @tutors = User.where(
        '(first_name LIKE ? OR last_name LIKE ? OR school LIKE ? OR subjects LIKE ? OR tutor_types LIKE ?) AND tutor = "t"',
        "%#{search}%",
        "%#{search}%",
        "%#{search}%",
        "%#{search}%",
        "%#{search}%"
        )
    else
      @tutors = User.where(tutor: true)
    end

    @tutors = @tutors.paginate(page: params[:page], per_page: 10).order('last_name ASC')
  end

  def show
    @tutor = User.where(id: params[:id], tutor: true).first
  end
end
