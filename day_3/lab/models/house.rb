require_relative '../db/sql_runner'

class House

  attr_reader :name, :url, :id 

  def initialize(options)
    @id = options['id'].to_i
    @name = options['name']
    @url = options['url']
  end

  def save
    sql = "INSERT INTO houses (name, url) VALUES ('#{@name}', '#{@url}') RETURNING id;"
    @id = SqlRunner.run(sql)[0]['id'].to_i
  end

  def self.all
   sql = 'SELECT * FROM houses;'
   SqlRunner.run(sql).map { |house| House.new(house) }
  end

  def self.find(id)
    sql = 'SELECT * FROM houses WHERE id = #{id};'
    SqlRunner.run(sql)
  end

end