require 'pg'

conn = PG.connect( dbname: 'yomi', host: 'localhost', user:'admin', password:'password' )

conn.exec( "INSERT INTO yomi.yamas values ( 'test', MD5('hashed')) ON CONFLICT DO NOTHING;" )

conn.exec( "SELECT * FROM yomi.yamas LIMIT 100" ) do |result|
  puts "          message | hash"
  result.each do |row|
    puts " %16s | %-16s " %
      row.values_at('message', 'hash',)
  end
end
