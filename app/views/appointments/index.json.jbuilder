json.array!(@appointments) do |appointment|
  json.extract! appointment, :id, :title, :description
  json.start appointment.start_time
  json.end appointment.end_time
  json.url appointment_url(appointment, format: :html)
end
