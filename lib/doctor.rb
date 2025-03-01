class Doctor
    attr_reader :name
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def appointments
        Appointment.all.select do |appointment|
            appointment.doctor == self
        end
    end

    def new_appointment(patient, date)
        Appointment.new(date,patient,self)
    end

    def patients
        patients = []
        appointments.each do |appointment|
           patients << appointment.patient
        end
        patients
    end
end