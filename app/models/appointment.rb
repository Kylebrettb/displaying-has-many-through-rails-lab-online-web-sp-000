class Appointment < ApplicationRecord
  belongs_to :doctor
  belongs_to :patient

  def doctor_name
    self.doctor.name
  end

  def patient_name
    self.patient.name
  end

  def readable_datetime
    self.appointment_datetime.strftime("%B %e, %Y at %H:%M")
  end

end