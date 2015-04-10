module TutorsHelper
  def tutor_name(tutor)
    tutor.present? ? "#{tutor.first_name.capitalize} #{tutor.last_name.capitalize}" : ''
  end

  def subjects_list(tutor)
    subjects(tutor).join(', ')
  end

  def subjects(tutor)
    tutor.subjects ? tutor.subjects.delete_if(&:empty?) : []
  end

  def tutor_types(tutor)
    tutor.tutor_types ? tutor.tutor_types.delete_if(&:empty?) : []
  end

  def tutoring_types
    %w(Group Individual)
  end
end
