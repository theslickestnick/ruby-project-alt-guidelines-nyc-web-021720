require 'bundler'
#require_relative './reference/tmresults'
#require_relative './tmresults.rb'
Bundler.require

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'db/development.db')
ActiveRecord::Base.logger = nil

require_all 'lib'
require_all 'bin'