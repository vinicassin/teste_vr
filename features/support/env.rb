require 'rspec'
require 'pry'
require 'yaml'
require 'net/http'
require 'uri'
require 'date'
require 'json'
require 'rest-client'


if ENV['dev']
  $ambiente = "dev"
elsif ENV['integracao']
  $ambiente = "integracao"
elsif ENV['homolog']
  $ambiente = "homolog"
elsif ENV['prod']
  $ambiente = "prod"
else
  $ambiente = "dev"
end

$report_title = "Data: #{Time.now.strftime("%d-%m")}, Hora: #{Time.now.strftime("%H-%M")}"
