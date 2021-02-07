require 'pg'

def open
  conn = PG.connect( dbname: 'yomi', host: 'localhost', user:'admin', password:'password' )
  return conn
end

def insert(pais, conn)
  values = pais.map{|pai| "('#{pai}', MD5('#{pai}'))"}.join(",")
  conn.exec("INSERT INTO yomi.yamas values #{values} ON CONFLICT DO NOTHING;")
end

def close(conn)
  return conn.close()
end
