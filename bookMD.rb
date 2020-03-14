require 'rubygems'
require 'tty-prompt'
require 'tty-reader'


def start 
    prompt = TTY::Prompt.new
    system("clear")
    welcome = prompt.select("welcome to bookMD") do |menu|
        menu.choice 'book_appointment'
        menu.choice 'manage_appointments'
    end
    
    if welcome == 'book_appointment'
        puts "availabilities"
    elsif welcome == 'manage_appointments'
        puts "current appointments"
    end
end   

start




def booker



end   

