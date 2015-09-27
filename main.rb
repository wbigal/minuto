Dir[File.dirname(__FILE__) + "/app/**/*.rb"].each { |file| load file }

require 'table_print'

@key_words_service = KeyWordsService.new
key_words = @key_words_service.key_words

tp(key_words, :word, :total, 'posts.title': { width: 200, display_name: 'Posts' })
