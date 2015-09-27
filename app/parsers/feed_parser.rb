require 'xmlsimple'
require 'nokogiri'

class FeedParser
  def from_xml xml_data
    posts = PostCollection.new
    feed_data = XmlSimple.xml_in(xml_data)

    feed_data['channel'][0]['item'].each do |feed_item|
      posts << to_post(feed_item)
    end

    posts
  end

  private

  def to_post feed_item
    Post.new({
                description: feed_item['description'].first,
                title: feed_item['title'].first,
                content: strip_content(feed_item['encoded'].first),
                html: feed_item['encoded'].first,
                link: feed_item['link'].first,
                published_at: Date.strptime(feed_item['pubDate'].first, "%a, %d %b %Y %H:%M:%S %Z")
            })
  end

  def strip_content html
    doc = Nokogiri::HTML(html)
    doc.xpath("//text()").remove.to_s.strip
  end
end
