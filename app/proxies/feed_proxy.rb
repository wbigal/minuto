require 'httparty'

class FeedProxy

  DEFAULT_FEED_URL = 'http://www.minutoseguros.com.br/blog/feed/'

  attr_reader :feed_url

  def initialize feed_url = nil
    @feed_url = (feed_url.nil?) ? DEFAULT_FEED_URL : feed_url
  end

  def get paged = 1
    response = HTTParty.get(@feed_url, query: { paged: paged })
    OpenStruct.new(status_code: response.code, body: response.body)
  end
end
