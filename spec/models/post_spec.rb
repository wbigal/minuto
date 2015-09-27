require 'spec_helper'

describe KeyWord do
  let(:post) { build(:posts) }

  describe "Constructor" do
    it "default values" do
      expect(post).to have_attributes({
        title: "Trem atinge limusine: o seguro auto cobre?",
        content: "Uma batida impressionante aconteceu no último mês na cidade de New Paris, no estado do Indiana, Estados Unidos.",
        html: "<p><img class=\"alignright  wp-image-15138\" src=\"/blog/wp-content/uploads/2015/08/limusine-trem.jpg\" alt=\"Limusine x trem\" width=\"246\" height=\"172\" />Uma batida impressionante aconteceu no último mês na cidade de New Paris, no estado do Indiana, Estados Unidos.</p>\n",
        link: "http://www.minutoseguros.com.br/blog/carro/trem-limusine-seguro-auto-cobre/",
        published_at: "2015-08-05"
      })
    end

    it "nil hash" do
      post = Post.new
      expect(post).to have_attributes({
        title: nil,
        content: nil,
        html: nil,
        link: nil,
        published_at: nil
      })
    end
  end

  it "#words_from_content" do
    expected_words = ["uma", "batida", "impressionante", "aconteceu", "no",
                     "último", "mês", "na", "cidade", "de", "new", "paris",
                     "no", "estado", "do", "indiana", "estados", "unidos"]

    expect(post.words_from_content).to match_array(expected_words)
  end

  it "#text_from_content" do
    expected_text = "Uma batida impressionante aconteceu no último mês na cidade de New Paris, no estado do Indiana, Estados Unidos.".downcase
    expect(post.text_from_content).to eq(expected_text)
  end
end
