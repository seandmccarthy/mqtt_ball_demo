require 'sinatra'

set :bind, '0.0.0.0'
set :public_folder, File.dirname(__FILE__) + '/files'
get '/' do
  erb :telemetry, locals: { mqtt_host: '192.168.254.55', mqtt_port: 8083 }
end

get '/display' do
  erb :display, locals: { mqtt_host: '192.168.254.55', mqtt_port: 8083 }
end
