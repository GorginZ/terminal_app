# class Patients
#     attr_accessor :name, :dob
#     def initialize (name,dob)
#         @name = name
#         @dob = dob
#       end
#     end       


# patient1 = {
#   'Name': 'Jack',
#   'Phone': '000000',
#   'Email': 'Jack@gmail.com'   #hash
# }
# patients = [patient1]      #this contact1 hash gets stored in an array 


def make_patient
 patients = {}

print "Name: "
    name = gets.chomp
    print "Phone: "
    phone = gets.chomp
    print "Email: "
    email = gets.chomp
    patient = {
      'Name': name,
      'Phone': phone,
      'Email': email
    }
    
end

def printer(make_patient)
separator = ' '
File.open("patients.txt","a+") do |f|  #flag

    f.puts(make_patient)
    f.puts(separator)
   
end
end
   
 p printer(make_patient)






# patients.each do |key, value|   #access all patients
#     puts key
# end    


# all_patients = {}
# # all_patients << 
# new_patient = Patients.new "georgia","10/03/1994"
# all_patients < new_patient
# p new_patient

# p all_patients

#   def make_patients
#     puts "full name"
#   new_patient = gets.chomp
#   puts "dob dd/mm/yyyy"
#   @dob = gets.chomp


#   end   
