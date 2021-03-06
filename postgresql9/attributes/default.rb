require 'digest/sha1'
require 'digest/md5'
srand


default[:postgresql9][:version] = '9.1.3'
default[:postgresql9][:prefix] = '/usr/local/pgsql'
default[:postgresql9][:user] = "postgres"
default[:postgresql9][:group] = "postgres"
default[:postgresql9][:datadir] = '/vol/pgsql/data'
default[:postgresql9][:encoding] = 'UTF8'
default[:postgresql9][:temp_buffers] = '50MB'
default[:postgresql9][:shared_buffers] = '200MB'
default[:postgresql9][:port] = '5432'
default[:postgresql9][:max_connections] = 1000
default[:postgresql9][:role] = 'opsworks'
default[:postgresql9][:password] = Digest::MD5.hexdigest(Digest::SHA1.hexdigest("--#{rand(10000)}--#{Time.now}--")[0,8])
default[:postgresql9][:shmmax] = '1342177280'
