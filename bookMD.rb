require 'rubygems'
require 'tty-prompt'
require 'tty-reader'
require 'tty-table'

def booker
    puts "availability for all doctors"
    availability = TTY::Table.new ['Monday 16','Tuesday 17','Wednesday 18','Thursday 19','friday 20'], [['8.00am', '8.00am','--','--','8.00am',], ['8.30am', '8.30am','8.30am','8.30am','8.30am'], ['9.00am', '9.00pm','9.00am','9.00am','9.00am'],['9.30am', '9.30am','9.30am','9.30am','9.30am'],['10.00am', '10.00am','10.00am','10.00am','10.00am'],['10.30am', '10.30am','10.30am','10.30am','10.30am']]
    #each new array entry is new row, first array is collumns

availability.render(:ascii)

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





