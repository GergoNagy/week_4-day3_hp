require_relative '../db/sql_runner'

class Student

  def initialize(options)
    @id = options['id'].to_i
    @first_name = options['first_name']
    @last_name = options['last_name']
    @house = options['house']
    @age = options['age'].to_i
  end

  def save
    sql = "INSERT INTO students (first_name, last_name, house, age) VALUES ('#{@first_name}', '#{@last_name}', '#{@house}', #{@age}) RETURNING id;"
    @id = SqlRunner.run(sql)[0]['id'].to_int
  end



end