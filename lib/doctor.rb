class Doctor
   attr_accessor :name
  
  @@all = []
  
  def self.all
    @@all
  end
  
  def initialize(name)
    @name = name
    @@all << self
  end  
  
  def appointments
    Appointments.all.select {|appt| appt.docter == self}
  end
  
  def new_appointment(date, patient)
    Appointment.new(date, patient, self)
  end
  
  def patients
    appointments.map {|appt| appt.patient}
  end
end