class Patient

  attr_accessor :name
  @@all_p = []

  def initialize(name)
    @name = name
    @@all_p << self
  end

  def new_appointment(date, doctor)
    Appointment.new(date, self, doctor)
  end

  def self.all
    @@all_p
  end

  def appointments
    Appointment.all.select {|a| a.patient == self}
  end

  def doctors
    doctors = []
    Appointment.all.select {|a| doctors << a.doctor if a.patient == self}
    doctors
  end

end
