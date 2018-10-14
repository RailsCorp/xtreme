rails_root = File.expand_path('../../', __FILE__)

worker_processes Integer(ENV["WEB_CONCURRENCY"] || 3)
working_directory rails_root
timeout 15
preload_app true

<<<<<<< HEAD
listen "#{rails_root}/tmp/unicorn.sock"
pid "#{rails_root}/tmp/unicorn.pid"
=======
listen "/vagrant/xtreme/tmp/sockets/unicorn.sock"
pid    "/vagrant/xtreme/tmp/pids/unicorn.pid"
>>>>>>> 239d96417a0cbeebf632515c0c2cbc761fccb060

before_fork do |_server, _worker|
  Signal.trap "TERM" do
    puts "Unicorn master intercepting TERM and sending myself QUIT instead"
    Process.kill "QUIT", Process.pid
  end

  defined?(ActiveRecord::Base) and
    ActiveRecord::Base.connection.disconnect!
end

after_fork do |_server, _worker|
  Signal.trap "TERM" do
    puts "Unicorn worker intercepting TERM and doing nothing. Wait for master to send QUIT"
  end

  defined?(ActiveRecord::Base) and
    ActiveRecord::Base.establish_connection
end

<<<<<<< HEAD
stderr_path "#{rails_root}/log/unicorn_error.log"
stdout_path "#{rails_root}/log/unicorn.log"
=======
stderr_path File.expand_path("log/unicorn.log", ENV["RAILS_ROOT"])
stdout_path File.expand_path("log/unicorn.log", ENV["RAILS_ROOT"])
>>>>>>> 239d96417a0cbeebf632515c0c2cbc761fccb060
