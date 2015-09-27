POST_HASH = JSON.parse(File.new('spec/fixtures/post.json').read).to_hash
POST_HASH_2 = JSON.parse(File.new('spec/fixtures/post2.json').read).to_hash

FactoryGirl.define do
  factory :posts, class: Post do
    transient do
      hash POST_HASH
    end

    initialize_with do
      new(hash)
    end
  end

  factory :posts2, class: Post do
    transient do
      hash POST_HASH_2
    end

    initialize_with do
      new(hash)
    end
  end
end
