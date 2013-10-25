couches = ARGV[0].to_i
couches.times do |n|
  port = 60000+n
  puts port
  system "docker run -d -p #{port}:5984 fbehrens/couchdb"
end
