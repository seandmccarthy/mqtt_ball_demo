require 'sinatra'

if ARGV[0].nil?
  puts 'Usage: ruby server.rb <ip_address_of_mqtt_broker>'
  exit 1
end
set :bind, '0.0.0.0'
set :public_folder, File.dirname(__FILE__) + '/files'
set :mqtt_host, ARGV[0]
set :mqtt_port, ARGV[1] || 8083

get '/' do
  erb :telemetry, locals: { mqtt_host: settings.mqtt_host, mqtt_port: settings.mqtt_port }
end

get '/display' do
  erb :display, locals: { mqtt_host: settings.mqtt_host, mqtt_port: settings.mqtt_port }
end
