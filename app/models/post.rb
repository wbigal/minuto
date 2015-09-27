class Post
  attr_accessor :title
  attr_accessor :description
  attr_accessor :content
  attr_accessor :html
  attr_accessor :link
  attr_accessor :published_at

  def initialize hash = {}
    data = hash.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo} if (!hash.nil?)
    @title = ParamHelper.value_of data, 'title'
    @description = ParamHelper.value_of data, 'description'
    @content = ParamHelper.value_of data, 'content'
    @html = ParamHelper.value_of data, 'html'
    @link = ParamHelper.value_of data, 'link'
    @published_at = ParamHelper.value_of data, 'published_at'
  end

  def words_from_content
    text_from_content.scan(/[[:alpha:]]+/)
  end

  def text_from_content
    @content.downcase
  end
end
