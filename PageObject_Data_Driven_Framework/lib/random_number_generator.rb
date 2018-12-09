class RandomNumberGenerator


  def generate_activation_code(size = 6)
    charset = %w{0 1 2 3 4 6 7 9 A C D E F G H J K M N P Q R T V W X Y Z a b c d e f g g i j k l m n o p q r s t u v w x y z}
    (0...size).map{ charset.to_a[rand(charset.size)] }.join
  end

  a= generate_activation_code(8)
  b=generate_activation_code(4)
  c=generate_activation_code(4)
  d=generate_activation_code(4)
  e=generate_activation_code(12)

  f= a+"-"+b+"-"+c+"-"+d+"-"+e




  def generate_activation_code2(size = 6)
    charset = %w{0 1 2 3 4 6 7 9 }
    (0...size).map{ charset.to_a[rand(charset.size)] }.join
  end

  a1=generate_activation_code2(8)
  #puts "#{a1}"

  a2=rand(300..1000)

  z="eit_tester#{a2}@gmail.com|#{f}|PUBLIC-SG-ELIS-Applicant|eit_tester#{a2}@gmail.com|~|~|8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918|~|~|~|(202) 555-#{a1}"


end




