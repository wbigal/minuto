require 'spec_helper'

describe KeyWord do
  let(:xml) { File.new('spec/fixtures/feed.xml').read }
  let(:feed_proxy) { FeedProxy.new }

  it '#get' do
    result = feed_proxy.get
    expect(result).to have_attributes(status_code: 200, body: xml)
  end

  it '#get page 2' do
    result = feed_proxy.get 2
    expect(result).to have_attributes(status_code: 200, body: xml)
  end
end
