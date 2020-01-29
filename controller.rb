require('sinatra')
require('sinatra/contrib/all')
require('pry')

require_relative('./models/student.rb')
require_relative('./models/house.rb')
also_reload('./models/*')

get '/hogwarts' do
  @students = Student.all()
  erb(:home)
end

get '/hogwarts/new' do
  @houses = House.find()
  erb(:create)
end

post '/hogwarts' do
  @student = Student.new(params)
  @student.save
  redirect to('/hogwarts')
end

get '/hogwarts/houses' do
  @houses = House.find()
  erb(:house)
end

get '/hogwarts/houses/:id' do
  @house = House.find_by_id(params[:id])
  erb(:individualhouse)
end
