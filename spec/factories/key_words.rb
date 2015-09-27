WEY_WORD_WORD = 'minuto'

FactoryGirl.define do
  factory :key_words, class: KeyWord do
    transient do
      word WEY_WORD_WORD
    end

    initialize_with do
      new(word)
    end
  end

  factory :preposition_key_words, class: KeyWord do
    prepositon = 'a'
    transient do
      word prepositon
    end

    initialize_with do
      new(prepositon)
    end
  end

  factory :article_key_words, class: KeyWord do
    article = 'das'
    transient do
      word article
    end

    initialize_with do
      new(article)
    end
  end

  factory :invalid_key_words, class: KeyWord do
    article = 'já'
    transient do
      word article
    end

    initialize_with do
      new(article)
    end
  end
end
