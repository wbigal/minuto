class KeyWordsService
  attr_reader :feed_proxy
  attr_reader :feed_parser

  def initialize
    @feed_proxy = FeedProxy.new
    @feed_parser = FeedParser.new
  end

  def key_words
    xml_posts = posts_from_web
    posts = @feed_parser.from_xml xml_posts
    posts.key_words
  end

  private

  def posts_from_web
    response = @feed_proxy.get
    if (response.status_code == 200)
      response.body
    else
      raise "Status code: #{response.status_code}"
    end
  end
end
