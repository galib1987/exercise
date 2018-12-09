# a=rand(300..10000)
# puts "eit_tester#{a}@gmail.com|8CEAB1A7-1459-423B-A8F6-A3B58AC3F456|PUBLIC-SG-ELIS-Applicant|eit_tester#{a}@gmail.com|~|~|8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918|~|~|~|(202) 555-#{rand(1000000..10000000)}"


#------------Generate 8 Character Random String ---------------------------------------------------
# b=(0...8).map { (65 + rand(26)).chr }.join
# puts "#{b}"

#---------Generate 50 Character Lower case Random String-------------------------------------------------------
# c =(0...50).map { ('a'..'z').to_a[rand(26)] }.join
# puts "#{c}"


#---------Generate 50 Character Uper and Lowser case string--------------------------------------------------
# o = [('a'..'z'), ('A'..'Z')].map { |i| i.to_a }.flatten
# string = (0...50).map { o[rand(o.length)] }.join
# puts "#{string}"


#----------------Generate 8 Character lower case string and shuffle it--------------------------------------------------------

# string1=('a'..'z').to_a.shuffle[0,8].join
# puts "#{string1}"

#------------Generate 8 Character lower case string with number and letter-----------------------------------------

# string2=[*('a'..'z'),*('0'..'9'),*('A'..'Z')].shuffle[0,8].join
# puts "#{string2}"

#--------Secure Randdom gem--------------------------------------------------------------------------------------
# require 'securerandom'
# random_string = SecureRandom.hex

# outputs: 5b5cd0da3121fc53b4bc84d0c8af2e81 (i.e. 32 chars of 0..9, a..f)
# SecureRandom also has methods for:
#
# random_bytes
# base64
# random_number
#http://ruby-doc.org/stdlib-1.9.2/libdoc/securerandom/rdoc/SecureRandom.html

#------------------------------------------------------------------------------------------------------------------
#puts "#{rand(36**length).to_s(36)}"

#-----------------------------------------------------------------------------------------------------------------
#puts "#{rand.to_s}"

#--------------------------------
# length=20
# d=(36**(length-1) + rand(36**length)).to_s(36)
# e=(36**(length-1) + rand(36**length - 36**(length-1))).to_s(36)
# puts "#{d}"
# puts "#{e}"

#--------------------------------------------------------------------------------
#Generates a random string from a set of easily readable characters
    # def generate_activation_code(size = 6)
    #   charset = %w{0 1 2 3 4 6 7 9 A C D E F G H J K M N P Q R T V W X Y Z a b c d e f g g i j k l m n o p q r s t u v w x y z}
    #   (0...size).map{ charset.to_a[rand(charset.size)] }.join
    # end
    #
    # a= generate_activation_code(8)
    # b=generate_activation_code(4)
    # c=generate_activation_code(4)
    # d=generate_activation_code(4)
    # e=generate_activation_code(12)
    #
    # f= a+"-"+b+"-"+c+"-"+d+"-"+e
    #puts " f is: #{f}"

#puts "#{generate_activation_code(8)}-#{generate_activation_code(4)}-#{generate_activation_code(4)}-#{generate_activation_code(4)}-#{generate_activation_code(12)} "


#-----------------To be secure you would also want to use--------------------------------------------------------------------------
# def generate_activation_code1(size = 6)
#   charset = %w{0 1 2 3 4 6 7 9 A C D E F G H J K M N P Q R T V W X Y Z a b c d e f g g i j k l m n o p q r s t u v w x y z}
#   (0...size).map{ charset.to_a[SecureRandom.random_number(charset.size)] }.join
# end
#
# puts "#{generate_activation_code1(20)}"

#-------------------------------------------------------------------------------------------------------------------------------------

  # def generate_activation_code2(size = 6)
  #   charset = %w{1 2 3 4 6 7 9 }
  #   (0...size).map{ charset.to_a[rand(charset.size)] }.join
  # end
  #
  # a1= "A"+generate_activation_code2(9)
  # puts "#{a1}"
 #
 #    a2=rand(300..1000)
 #
 # # puts "eit_tester#{a2}@gmail.com|#{f}|PUBLIC-SG-ELIS-Applicant|eit_tester#{a2}@gmail.com|~|~|8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918|~|~|~|(202) 555-#{a1}"
 #
 #    a3= "eit_tester#{a2}@gmail.com|#{f}|PUBLIC-SG-ELIS-Applicant|eit_tester#{a2}@gmail.com|~|~|8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918|~|~|~|(202) 555-#{a1}"
 #    puts"#{a3}"

#"eit_tester#{generate_activation_code2(8)}@gmail.com|8CEAB1A7-1459-423B-A8F6-A3B58AC3F456|PUBLIC-SG-ELIS-Applicant|eit_tester#{a}@gmail.com|~|~|8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918|~|~|~|(202) 555-#{rand(1000000..10000000)}"


# def login (size = 6, lenght=6)
#
#   charset = %w{0 1 2 3 4 6 7 9 A C D E F G H J K M N P Q R T V W X Y Z a b c d e f g g i j k l m n o p q r s t u v w x y z}
#   (0...size).map{ charset.to_a[rand(charset.size)] }.join
#
#   charset1 = %w{0 1 2 3 4 6 7 9 }
#   (0...lenght).map{ charset.to_a[rand(charset1.lenght)] }.join
#
# end

# def randon_string
#
#  $string1='A'+('0'..'9').to_a.shuffle[0,9].join
#
# end
# puts "#{$string1}"