class Doctor 
  
  @@all = []
  attr_accessor :name 
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
  def appointments 
    Appointment.all.select{|appointment| appointment.doctor == self}
  end 
  
  def new_appointment(name, patient)
    Appointment.new(name, patient, self)
  end 
  
  def patients 
    b = []
    a = appointments 
    a.each do |appointment|
      b << appointment.patient 
    end 
    b
  end 
end 