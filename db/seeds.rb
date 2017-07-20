require_relative '../models/student'
require_relative '../models/house'

house1 = House.new ({
  'name' => 'Gryffindor',
  'url' => 'https://vignette2.wikia.nocookie.net/harrypotter/images/e/ee/Gryffindor_Crest-0.jpg/revision/latest?cb=20160729145529'
})

house2 = House.new ({
  'name' => 'Ravenclaw',
  'url' => 'https://vignette4.wikia.nocookie.net/harrypotter/images/2/28/Download_%284%29.jpg/revision/latest?cb=20160729145945'
})

house3 = House.new ({
  'name' => 'Hufflepuff',
  'url' => 'https://vignette1.wikia.nocookie.net/harrypotter/images/6/62/Download_%289%29.jpg/revision/latest?cb=20160729145653'
})

house4 = House.new ({
  'name' => 'Slytherin',
  'url' => 'https://vignette1.wikia.nocookie.net/harrypotter/images/7/72/Ccd53034-c798-452a-8032-f28e06250d8f.jpg/revision/latest?cb=20160729150848'
})

house1.save
house2.save
house3.save
house4.save

student1 = Student.new({
  'first_name' => 'Gergo',
  'last_name' => 'Nagy',
  'house_id' => house1.id,
  'age' => 31
})

student2 = Student.new({
  'first_name' => 'Stuart',
  'last_name' => 'Moir',
  'house_id' => house2.id,
  'age' => 42
})

student3 = Student.new({
  'first_name' => 'Alex',
  'last_name' => 'Bazlinton',
  'house_id' => house3.id,
  'age' => 34
})

student4 = Student.new({
  'first_name' => 'Keith',
  'last_name' => 'Douglas',
  'house_id' => house4.id,
  'age' => 41
})

student1.save
student2.save
student3.save
student4.save

