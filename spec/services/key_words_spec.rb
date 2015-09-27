require 'spec_helper'

describe KeyWordsService do
  let(:key_word_service) { KeyWordsService.new }

  it '#key_words' do
    key_words = key_word_service.key_words

    expect(key_words[0]).to have_attributes(word: 'seguro', total: 46)
    expect(key_words[1]).to have_attributes(word: 'não', total: 26)
    expect(key_words[2]).to have_attributes(word: 'cobertura', total: 19)
    expect(key_words[3]).to have_attributes(word: 'seu', total: 16)
    expect(key_words[4]).to have_attributes(word: 'minuto', total: 15)
    expect(key_words[5]).to have_attributes(word: 'carro', total: 14)
    expect(key_words[6]).to have_attributes(word: 'você', total: 14)
    expect(key_words[7]).to have_attributes(word: 'auto', total: 13)
    expect(key_words[8]).to have_attributes(word: 'dia', total: 12)
    expect(key_words[9]).to have_attributes(word: 'danos', total: 11)
  end
end
