class Doctor
 attr_accessor :name
 @@all = []

  def initialize(name)
   @name = name
   @@all << self
 end

  def self.all
   @@all
 end

  def new_appointment(date, patient)
   new_appointment = Appointment.new(date, patient, self)
 end

  def appointments
   Appointment.all.select{|appoinment| appoinment.doctor == self}
 end

  def patients
   appointments.map {|appoinment| appoinment.patient}
 end
end
