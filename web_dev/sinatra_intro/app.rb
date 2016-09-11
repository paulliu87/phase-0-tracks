# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
	selection = db.execute("SELECT * FROM students WHERE name LIKE '%?%'", [params[:name]])[0]
	selection.to_s
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end

get '/contact' do
	"83 South King St 250 Seattle WA 98104"
end

get '/great_job' do
   if params[:name]
  "Good job, #{params[:name]}!"
	else
	"Good job!"
end
end

get '/:num1/adds/:num2' do
	num_1 = params[:num1]
	num_2 = params[:num2]
	result = num_1.to_i + num_2.to_i
	"#{result}"
end
