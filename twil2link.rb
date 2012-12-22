require 'twitter'
require './mail2id'
#require 'pp'
include Twil

address = ARGV[0]
regexp = /^T\d.(.+?)@twil\.jp$/

regexp =~ address
id_str = $1
status_id = to_num(id_str)
status = Twitter.status(status_id)

#pp status

url = "https://twitter.com/#{status.user.screen_name}/status/#{status_id}"

#puts
puts url
