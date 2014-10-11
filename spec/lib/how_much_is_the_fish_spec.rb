require 'spec_helper'

describe HowMuchIsTheFish do

  let(:client) { HowMuchIsTheFish::Client.new }

  it 'has a proxy method to find the quote' do
    expect(described_class).to respond_to :perma
    VCR.use_cassette :perma do
      expect(described_class.perma(1)['quote']).to eq client.perma(1)['quote']
    end
  end

  it 'has a proxy method to find a random quote' do
    expect(described_class).to respond_to :random
    VCR.use_cassette :random do
      expect(described_class.random['quote']).to eq client.random['quote']
    end
  end

  it 'has a proxy method to find a daily quote' do
    expect(described_class).to respond_to :daily
    VCR.use_cassette :daily do
      expect(described_class.daily['quote']).to eq client.daily['quote']
    end
  end
end
