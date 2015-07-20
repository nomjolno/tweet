# -*- coding: utf-8 -*-
 
require 'rubygems'
require "twitter"
 
 
OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE
 
client = Twitter::REST::Client.new do |config|
  config.consumer_key        = "    "
  config.consumer_secret     = "    "
  config.access_token        = "    "
  config.access_token_secret = "    "
end
 
loop {
  puts "ツイート内容を入力して下さい"
  tweet = gets.chomp
if tweet == "cancel"
  puts "中止します"
else
  client.update(tweet)
end
break if tweet == "cancel"
}



