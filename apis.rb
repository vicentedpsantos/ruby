require 'rubygems'
require 'httparty'

class EdutechionalResty
  include HTTParty
  base_uri 'edutechional-resty.herokuapp.com'

  def posts
    self.class.get('posts.json')
  end
end

resty = EdutechionalResty.new
puts resty.posts

response = HTTParty.get('http://api.stackexchange.com/2.2/questions?site=stackoverflow')

puts response.body
puts resonse.code
puts response.message
