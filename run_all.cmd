start cmd.exe /e:on /k "cd master && ..\bin\redis-server ./redis.conf" 
start cmd.exe /e:on /k "cd slave1 && ..\bin\redis-server ./redis.conf" 
start cmd.exe /e:on /k "cd slave2 && ..\bin\redis-server ./redis.conf" 
start cmd.exe /e:on /k "cd sentinel1 && ..\bin\redis-server ./sentinel.conf --sentinel" 
start cmd.exe /e:on /k "cd sentinel2 && ..\bin\redis-server ./sentinel.conf --sentinel" 
start cmd.exe /e:on /k "cd sentinel3 && ..\bin\redis-server ./sentinel.conf --sentinel" 

pause

bin\redis-cli incr foo:bar

pause

bin\redis-cli -p 26379 sentinel masters