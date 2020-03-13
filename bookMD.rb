
require 'tty-prompt'

home_menu = TTY::Prompt.new
home_menu.select("What do you need today?", %w(Book_appointment Manage_appointments))


    
    
    # puts "Welcome to bookMD"
    # puts "If you are experiencing a medical emergency call 000"
    # puts "1. Book Appointment"
    # puts "2. Manage appointments"
    # puts "if you need help type --help"
    # puts "  >"

def menu_select

user_input = gets.chomp

  case
  when user_input == "1"
puts "book appointment"
  when user_input == "2"
    puts "your appointments..."
  end
end


p loop {menu_select}

# def user_selector
#     user_input = gets.chomp
#     input.array = [1,2,3]
#     case
#     when user_input == integer
#         user_input = getschomp.to_i
#     end
#     when userinput.is string
#         user_input.hash {1, "book", "Book", ;2;3;4;5;6;7}
# end
    