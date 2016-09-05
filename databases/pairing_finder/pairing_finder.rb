require 'sqlite3'
require 'faker'

# create SQLite3 database
db = SQLite3::Database.new("pairing.db")
db.results_as_hash = true

# learn about fancy string delimiters
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS students(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    cohort VARCHAR(255),
    campus_location VARCHAR(255),
    pairing_information VARCHAR(64),
    feed_back VARCHAR(255)
  )
SQL

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS pairing_students(
    id INTEGER PRIMARY KEY,
    module VARCHAR(255),
    pairing_date DATE,
    partner VARCHAR(255),
    status VARCHAR(255)
  )
SQL
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS feedback(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    productivity INT,
   	patient INT,
   	knowledgeable INT,
   	friendly INT
    )
SQL

# create a kittens table (if it's not there already)
db.execute(create_table_cmd)

# add a test kitten
# db.execute("INSERT INTO kittens (name, age) VALUES ('Bob', 10)")

# add LOOOOTS of kittens!
# so. many. kittens. 
#KittenExplosion
def create_kitten(db, name, age)
  db.execute("INSERT INTO kittens (name, age) VALUES (?, ?)", [name, age])
end

10000.times do
  create_kitten(db, Faker::Name.name, 0)
end
