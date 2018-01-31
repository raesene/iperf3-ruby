iperf3-ruby
--

This is just a very quick script I wrote to automate the process of getting download stats from an iperf3 server so I could analyze my download speeds.

once you've got the scripts and an iperf server to run against, just replace [SERVER_IP_HERE] and [PORT_HERE] in the ruby file and add something like this to your cron file

`0,15,30,45 * * * * /iperf3/iperf3.sh`

(that runs it every 15 minutes).  The idea is that it'll generate a new file every day with the time of the run and the download speed reported.  You can then analyze with whatever you like to produce some graphs.
