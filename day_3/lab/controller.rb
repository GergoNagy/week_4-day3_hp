
require 'sinatra'
require 'sinatra/contrib/all'
require 'pry-byebug'

require_relative './models/student'

# Index
get '/students' do
  @students = Student.all()
  erb(:index)
end

# New
get '/students/new' do
  erb(:new)
end

# Create
post '/students' do
  student = Student.new(params)
  student.save
  erb(:create)
end