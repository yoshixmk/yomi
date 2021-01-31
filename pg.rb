require 'pg'

def open
  conn = PG.connect( dbname: 'yomi', host: 'localhost', user:'admin', password:'password' )
  return conn
end

def insert(pais, conn)
  values = pais.map{|pai| "('#{pai}', MD5('#{pai}'))"}.join(",")
  conn.exec("INSERT INTO yomi.yamas values #{values} ON CONFLICT DO NOTHING;")

  # conn.exec( "SELECT * FROM yomi.yamas LIMIT 100" ) do |result|
  #   puts "          message | hash"
  #   result.each do |row|
  #     puts " %16s | %-16s " %
  #       row.values_at('message', 'hash',)
  #   end
  # end
end

def close(conn)
  return conn.close()
end
