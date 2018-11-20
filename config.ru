require File.expand_path('app', File.dirname(__FILE__))

set :session_secret, ENV.fetch('SESSION_SECRET')
run Battle
