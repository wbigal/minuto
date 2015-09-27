require 'spec_helper'

describe PostCollection do
  it '#key_words' do
    post1 = FactoryGirl.build(:posts)
    post2 = FactoryGirl.build(:posts2)

    collection = PostCollection.new
    collection << post1
    collection << post2

    key_words = collection.key_words(10)

    expect(key_words[0]).to have_attributes(word: 'seguro', total: 4)
    expect(key_words[1]).to have_attributes(word: 'mundo', total: 3)
    expect(key_words[2]).to have_attributes(word: 'seguradora', total: 2)
    expect(key_words[3]).to have_attributes(word: 'aconteceu', total: 1)
    expect(key_words[4]).to have_attributes(word: 'adquirir', total: 1)
    expect(key_words[5]).to have_attributes(word: 'batida', total: 1)
    expect(key_words[6]).to have_attributes(word: 'cidade', total: 1)
    expect(key_words[7]).to have_attributes(word: 'cuida', total: 1)
    expect(key_words[8]).to have_attributes(word: 'deve', total: 1)
    expect(key_words[9]).to have_attributes(word: 'empresas', total: 1)
  end
end
