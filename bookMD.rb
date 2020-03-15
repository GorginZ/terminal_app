require 'rubygems'
require 'tty-prompt'
require 'tty-reader'
require 'tty-table'
require 'tty-box'

def drs_info
    puts "availability for all doctors"


    drs = TTY::Table.new header: ['Dr. Gregor','Dr. Helen Kouzmin','Dr Kooray','Dr. Sade Weatley','Dr. Patrick Chan'], rows: [['Monday', 'Monday','-----','-----','Monday',], ['Tuesday', 'Tuesday','Tuesday','Tuesday','Tuesday'], ['Wednesday', 'Wednesday','Wednesday','-----','Wednesday'],['Thursday', 'Thursday','Thursday','-----','Thursday'],['Friday', 'Friday','Friday','Friday','Friday']]
drs.render(:ascii)

end



def booking_info

    appointment = TTY::Prompt.new
    system("clear")

    box = TTY::Box.frame(width: 30, height: 10, align: :center) do
        "info about docs specialisations etc"
      end
      print box
      print drs_info

    selection = appointment.select("welcome to bookMD") do |menu|
        
        menu.choice 'Monday'
        menu.choice 'Tuesday'
        menu.choice 'Wednesday'
        menu.choice 'Thursday'
        menu.choice 'Friday'
    end
    case
    when selection == 'Monday'
        print monday_display
        print monday_appointments
    when selection == 'Tuesday'
        print tuesday_display
        print tuesday_appointments
    # when selection == 'Tuesday'
    #     puts "tuesday_availability"
    # when selection == 'Wednesday'
    #     puts "Wednesday_availability"
    # when selection == 'Thursday'
    #     puts "Thursday_availability"
    # when selection == 'Friday'
    #     puts "Friday_availability"
    end
  
end

def monday_display
    system("clear") 
    mondaytimes = TTY::Table.new header: 
    
    ['Dr. Gregor','Dr. Helen Kouzmin','Dr. Patrick Chan'], rows: [['8.30am', '9.00','9.30'], ['11.30', '2.00pm','3.00pm']]
    
    mondaytimes.render(:ascii)
end


def monday_appointments
    prompt = TTY::Prompt.new
     monday_select = prompt.select("welcome to bookMD") do |menu|
        menu.choice 'Dr. Gregor 8.30am'
        menu.choice 'Dr. Gregor 11.30'
        menu.choice 'Dr. Helen Kouzmin 9.00am'
        menu.choice 'Dr. Helen Kouzmin 2.00pm'
        menu.choice 'Dr. Patrivk Chan 9.30am'
        menu.choice 'Dr. Patrivk Chan 3.00pm'
        menu.choice 'Back to week availability'

    end
    case
    when  monday_select == 'Dr. Gregor 8.30am'
        print "greg"
    when  monday_select == 'Dr. Gregor 11.30'
        print "l"
    when monday_select == 'Dr. Helen Kouzmin 2.00pm'
        print "2"
    when monday_select == 'Dr. Helen Kouzmin 9.00am'
        print "9"
    when monday_select ==  'Dr. Patrivk Chan 9.30am'
        print "kkj"
    when monday_select ==  'Dr. Patrivk Chan 3.00pm'
        print "c 3"
    when monday_select == 'Back to week availability'
        system("clear")
        print booking_info
    end
end
  
def tuesday_display
    system("clear") 
    tuesdaytimes = TTY::Table.new header: 
    
    ['Dr. Gregor','Dr. Helen Kouzmin','Dr Kooray', 'Dr. Sade Weatley','Dr. Patrick Chan'], rows: [['9.30am', '10.00am','2.30pm','9.00am','10.00am'], ['1.30pm', '2.00pm','3.00pm','3.00pm ','  ']]
    
    tuesdaytimes.render(:ascii)
end

def tuesday_appointments
    prompt = TTY::Prompt.new
     tuesday_select = prompt.select("Tuesday Appointments - Scroll down to view all appointment availabilities") do |menu|
        menu.choice 'Dr. Gregor 9.30am'
        menu.choice 'Dr. Gregor 1.30'
        menu.choice 'Dr. Helen Kouzmin 10.00am'
        menu.choice 'Dr. Helen Kouzmin 2.00pm'
        menu.choice 'Dr. Lanka Kooray 2.30pm'
        menu.choice 'Dr. Lanka Kooray 3.00pm'
        menu.choice 'Dr. Sade Weatley 9.00am'
        menu.choice 'Dr. Sade Weatley 3.00pm'
        menu.choice 'Dr. Patrivk Chan 10.00am'
        menu.choice 'Back to week availability'

    end
    case
    when  tuesday_select == 'Dr. Gregor 8.30am'
        print "greg"
    when  tuesday_select == 'Dr. Gregor 11.30'
        print "l"
    when tuesday_select == 'Dr. Helen Kouzmin 2.00pm'
        print "2"
    when tuesday_select == 'Dr. Helen Kouzmin 9.00am'
        print "9"
    when tuesday_select ==  'Dr. Patrivk Chan 9.30am'
        print "kkj"
    when tuesday_select ==  'Dr. Patrivk Chan 3.00pm'
        print "c 3"
    when tuesday_select == 'Back to week availability'
        system("clear")
        print booking_info
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
        print booking_info  # availability/booker method will go here
    elsif welcome == 'manage_appointments'
        puts "current appointments"
    end
end   

start

# confirm = TTY::Box.success("Booking confirmed")

# print confirm




