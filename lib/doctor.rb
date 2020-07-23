class Doctor
  
  attr_reader :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    save
  end
    
  def self.all
    @@all
  end
  
  def save
    @@all << self
  end      
  
  def new_appointment(date, patient)
    Appointment.new(date, patient, self)
  end
  
  def appointments
    Appointment.all.select { |appointments| appointments.doctor.name == self.name }
  end
  
  def patients
    self.appointments.collect { |appointment| appointment.patient }
  end
  
end