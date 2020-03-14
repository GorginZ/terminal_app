require 'rubygems'
require 'tty-prompt'
require 'tty-reader'
require 'tty-table'
require 'tty-box'

def drs
    puts "availability for all doctors"


    drs = TTY::Table.new header: ['Dr. Gregor','Dr. Helen Kouzmin','Dr Kooray','Dr. Sade Weatley','Dr. Patrick Chan'], rows: [['Monday', 'Monday','-----','-----','Monday',], ['Tuesday', 'Tuesday','Tuesday','Tuesday','Tuesday'], ['Wednesday', 'Wednesday','Wednesday','-----','Wednesday'],['Thursday', 'Thursday','Thursday','-----','Thursday'],['Friday', 'Friday','Friday','Friday','Friday']]
drs.render(:ascii)

end



def booker

    appointment = TTY::Prompt.new
    system("clear")

    box = TTY::Box.frame(width: 30, height: 10, align: :center) do
        "info about docs"
        
      end
     
      print box

      print drs

      

    welcome = appointment.select("welcome to bookMD") do |menu|
        
        menu.choice 'Monday'
        menu.choice 'Tuesday'
        menu.choice 'Wednesday'
        menu.choice 'Thursday'
        menu.choice 'Friday'
    end
   
end

  


def start 
    prompt = TTY::Prompt.new
    system("clear")
    welcome = prompt.select("welcome to bookMD") do |menu|
        menu.choice 'book_appointment'
        menu.choice 'manage_appointments'
    end
    
    if welcome == 'book_appointment'
        print booker  # availability/booker method will go here
    elsif welcome == 'manage_appointments'
        puts "current appointments"
    end
end   

start
confirm = TTY::Box.success("Booking confirmed")



print confirm




