#!/usr/bin/env ruby

require 'json'
require 'date'

filename = 'iperf-results-' + Date.today.to_s + '.csv'

if !File.exists?(filename)
  results_file = File.new(filename ,'w+')
else
  results_file = File.open(filename ,'a+')
end

response = `iperf3 -c [SERVER_IP_HERE] -p [PORT_HERE] -t 10 -R --json`

parsed_response = JSON.parse(response)
results_file.puts DateTime.now.to_s + ',' + parsed_response['end']['sum_received']['bits_per_second'].to_s
