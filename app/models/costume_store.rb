# Create your CostumeStore class here
require 'active_record'
ActiveRecord::Base.establish_connection(
    :adapter => "sqlite3",
    :database => "db/test.sqlite3"
)

sql = <<-SQL
  CREATE TABLE IF NOT EXISTS costume_stores (
    id  INTEGER PRIMARY KEY,
    name TEXT,
    location TEXT,
    costume_inventory INTEGER,
    num_of_employees INTEGER,
    is_in_business BOOLEAN,
    opening_time DATETIME,
    closing_time DATETIME
  )
  SQL

  ActiveRecord::Base.connection.execute(sql)

  ActiveRecord::Base.logger = Logger.new (STDOUT)

  class CostumeStore < ActiveRecord::Base
  end
