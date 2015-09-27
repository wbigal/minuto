class KeyWord
  PREPOSITIONS = ['a', 'de', 'em', 'por', 'per']
  ARTICLES = ['o', 'os', 'a', 'as', 'um', 'uns', 'uma', 'umas', 'ao', 'aos', 'à',
              'às', 'do', 'dos', 'da', 'das', 'dum', 'duns', 'duma', 'dumas', 'no',
              'nos', 'na', 'nas', 'num', 'nuns', 'numa', 'numas',
              'pela', 'pelas' ] # removed 'pelo', 'pelos' :(
  OTHERS_BLOCKS = [ 'e', 'também', 'mas', 'como', 'entretanto', 'todavia', 'portanto',
                  'que', 'porque', 'assim', 'pois', 'porquanto', 'contudo', 'ou',
                  'ora', 'já', 'se', 'com', 'é', 'para' ]

  attr_reader :word
  attr_reader :total
  attr_reader :posts

  def initialize word
    @word = word
    @total = 0
    @posts = []
  end

  def preposition?
    PREPOSITIONS.include?(@word)
  end

  def article?
    ARTICLES.include?(@word)
  end

  def word_valid?
    !preposition? && !article? && !OTHERS_BLOCKS.include?(@word)
  end

  def increment total
    @total += total
  end
end
