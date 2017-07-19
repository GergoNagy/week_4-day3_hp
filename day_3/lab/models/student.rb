require_relative '../db/sql_runner'
require_relative './house'
require 'pry'

class Student

  attr_reader :first_name, :last_name, :house_id, :age, :id

  def initialize(options)
    @id = options['id'].to_i
    @first_name = options['first_name']
    @last_name = options['last_name']
    @house_id= options['house_id'].to_i
    @age = options['age'].to_i
  end

  def save
    sql = "INSERT INTO students (first_name, last_name, house_id, age) VALUES ('#{@first_name}', '#{@last_name}', #{@house_id}, #{@age}) RETURNING id;"
    @id = SqlRunner.run(sql)[0]['id'].to_i
  end

  ###

  def self.all
   sql = 'SELECT * FROM students;'
   SqlRunner.run(sql).map { |student| Student.new(student) }
  end

  def self.find(id)
    sql = 'SELECT * FROM students WHERE id = #{id};'
    SqlRunner.run(sql)
  end

  def house
    sql = "SELECT * FROM houses WHERE id = #{@house_id}"
    House.new(SqlRunner.run(sql)[0])
  end
end