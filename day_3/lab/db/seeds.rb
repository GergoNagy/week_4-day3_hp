require_relative '../models/student'

student1 = Student.new({
  'first_name' => 'Gergo',
  'last_name' => 'Nagy',
  'house' => 'Gryffindor',
  'age' => 31
})

student2 = Student.new({
  'first_name' => 'Stuart',
  'last_name' => 'Moir',
  'house' => 'Ravenclaw',
  'age' => 42
})

student3 = Student.new({
  'first_name' => 'Alex',
  'last_name' => 'Bazlinton',
  'house' => 'Hufflepuff',
  'age' => 34
})

student4 = Student.new({
  'first_name' => 'Keith',
  'last_name' => 'Douglas',
  'house' => 'Slytherin',
  'age' => 41
})

student1.save
student2.save
student3.save
student4.save