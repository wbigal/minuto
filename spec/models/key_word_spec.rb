require 'spec_helper'

describe KeyWord do
  let(:key_word) { build(:key_words) }

  it "default values" do
    expect(key_word).to have_attributes(word: WEY_WORD_WORD, total: 0, posts: [])
  end

  it "#increment" do
    key_word.increment 123
    expect(key_word.total).to eq(123)
  end

  describe 'grammatical roles' do
    it "not prepositon" do
      expect(key_word.preposition?).to be_falsey
    end

    it "is prepositon" do
      prepositon_word = FactoryGirl.build(:preposition_key_words)
      expect(prepositon_word.preposition?).to be_truthy
    end

    it "not article" do
      expect(key_word.article?).to be_falsey
    end

    it "is article" do
      article_word = FactoryGirl.build(:article_key_words)
      expect(article_word.article?).to be_truthy
    end

    it "is valid" do
      expect(key_word.word_valid?).to be_truthy
    end

    it "is not valid" do
      invalid_word = FactoryGirl.build(:invalid_key_words)
      expect(invalid_word.article?).to be_falsey
    end
  end
end
