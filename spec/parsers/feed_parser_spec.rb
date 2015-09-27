require 'spec_helper'

describe FeedParser do
  let(:xml) { File.new('spec/fixtures/feed.xml').read }
  let(:feed_parser) { FeedParser.new }

  it '#from_xml' do
    posts = feed_parser.from_xml xml

    expect(posts[0]).to have_attributes(title: 'Cobertura de danos a vidros: por que contratar?')
    expect(posts[1]).to have_attributes(title: 'Batida no estacionamento: o seguro auto cobre?')
    expect(posts[2]).to have_attributes(title: 'Tipos de seguro para você e para seu patrimônio')
    expect(posts[3]).to have_attributes(title: 'Carro “fura” o prédio: o seguro auto cobre?')
    expect(posts[4]).to have_attributes(title: 'Guia: tudo sobre a vistoria prévia do seguro auto')
    expect(posts[5]).to have_attributes(title: 'Cavalo “atropela” carro: o seguro auto cobre?')
    expect(posts[6]).to have_attributes(title: 'Minuto Seguros: indicada ao Prêmio ÉPOCA ReclameAQUI 2015')
    expect(posts[7]).to have_attributes(title: 'Por que fazer um Seguro Pequenas e Médias Empresas?')
    expect(posts[8]).to have_attributes(title: 'O primeiro semestre do mercado de auto no Brasil')
    expect(posts[9]).to have_attributes(title: 'Trem atinge limusine: o seguro auto cobre?')
  end
end
