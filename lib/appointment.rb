class Appointment 
  
  @@all = []
  attr_accessor :date, :patient, :doctor
  def initialize(date, patient, doctor)
    @date = date 
    @patient = Patient.new(patient)
    @doctor = Doctor.new(doctor)
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
  def doctor 
    @doctor.name 
  end 
  
  def patient
    @patient.name 
  end 
end 