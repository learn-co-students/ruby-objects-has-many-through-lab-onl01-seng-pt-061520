class Appointment

  attr_accessor :date, :patient, :doctor

  @@all_a = []

  def initialize(date, patient, doctor)
    @date = date
    @patient = patient
    @doctor = doctor
    @@all_a << self
  end

  def self.all
    @@all_a
  end
end
