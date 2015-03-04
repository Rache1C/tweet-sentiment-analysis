require "sqlite3"

db = SQLite3::Database.new("ornery_ornithology.db", { results_as_hash: true })

results = []

db.execute("select * from tweet") do |row|
  results << row["TEXT"]
end

new_results = results.map do |string|
  string.upcase
end

puts new_results.inspect
