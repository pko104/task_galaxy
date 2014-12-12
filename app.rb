require "sinatra"
require "sinatra/activerecord"
require "sinatra/reloader"

configure :development do
  require "pry"
end

Dir[File.join(File.dirname(__FILE__), "app", "**", "*.rb")].each do |file|
  require file
  also_reload file
end

get "/" do
  "hello, world"
end
