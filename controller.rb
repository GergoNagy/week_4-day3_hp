
require 'sinatra'
require 'sinatra/contrib/all'
require 'pry-byebug'

require_relative './models/student'

# Index
get '/students' do
  @students = Student.all
  @houses = House.all
  erb(:index)
end

# New
get '/students/new' do
  @houses = House.all
  erb(:new)
end

# Create
post '/students' do
  student = Student.new(params)
  student.save
  erb(:create)
end