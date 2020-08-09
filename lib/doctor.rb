class Doctor

  attr_reader :name

  @@all_d = []

  def initialize(name)
    @name = name
    @@all_d << self
  end

  def appointments
    Appointment.all.select {|a| a.doctor == self}
  end

  def new_appointment(date, patient)
    Appointment.new(date, patient, self)
  end

  def patients
    patients = []
    Appointment.all.select {|a| patients << a.patient if a.doctor == self}
    patients
  end

  def self.all
    @@all_d
  end

end
