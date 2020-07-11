class Appointment
  attr_accessor :date, :patient, :docter
  
  @@all = []
  
  def self.all
    @@all
  end
  
  def initialize(date, patient, docter)
    @date = date
    @patient = patient
    @docter = docter
    @@all << self
  end  
end