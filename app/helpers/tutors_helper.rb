module TutorsHelper
  def tutor_name(tutor)
    tutor.present? ? "#{tutor.first_name.capitalize} #{tutor.last_name.capitalize}" : ''
  end

  def subjects_list(tutor)
    return unless tutor.subjects

    tutor.subjects.delete_if(&:empty?).join(', ')
  end

  def subjects(tutor)
    return unless tutor.subjects
    tutor.subjects.delete_if(&:empty?)
  end

  def tutor_types
    ['Group', 'Individual']
  end
end
