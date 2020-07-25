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
    # creates new appointment (with date and doctor)
    # Appointment knows it belongs to the patient
        Appointment.new(date, patient, self)
    end

    def appointments
    # iterates through all Appointments
    # finds those belonging to the doctor
		Appointment.all.select { |appointment| appointment.doctor == self }
	end

    def patients
    # iterates over the doctor's Appointment
    # collects the patient that belongs to each Appointment
		self.appointments.collect { |appointment| appointment.patient }
	end

end