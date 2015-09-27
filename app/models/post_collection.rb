class PostCollection < Array
  DEFAULT_KEY_WORDS_LIMIT = 10

  def key_words limit = DEFAULT_KEY_WORDS_LIMIT
    return [] if (self.count == 0)

    words = {}

    self.each do |post|
      update_words words, post
    end

    words.values.sort { |x,y| [ y.total, x.word ] <=> [ x.total, y.word ] }.take(DEFAULT_KEY_WORDS_LIMIT)
  end

  private

  def update_words words, post
    counts = Hash.new(0)
    post.words_from_content.each { |word| counts[word] += 1 }

    counts.each do |word, total|
      key_word = words.key?(word) ? words[word] : KeyWord.new(word)

      if (key_word.word_valid?)
        key_word.increment total
        key_word.posts << post
        words[word] = key_word
      end
    end
    true
  end
end
