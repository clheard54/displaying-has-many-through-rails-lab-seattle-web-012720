class Appointment < ActiveRecord::Base
    belongs_to :doctor
    belongs_to :patient

    def time_view
        @date = self.appointment_datetime.strftime('%B %d, %Y')
        @time = self.appointment_datetime.strftime("at %R")
        p "#{@date} #{@time}"
    end
end