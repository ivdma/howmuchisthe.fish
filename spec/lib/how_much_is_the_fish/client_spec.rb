require 'spec_helper'

describe HowMuchIsTheFish::Client do
  let(:client) { described_class.new }

  it 'shows quote by id' do
    VCR.use_cassette :perma do
      result = client.perma(1)
      expect(result['quote']['text']).to include('I want you back for the rhythm attack.')
    end
  end

  it 'shows a random quote' do
    VCR.use_cassette :random do
      result = client.random
      expect(result['quote']['text']).to include('When I\'m far from home, don\'t call')
    end
  end

  it 'shows a daily quote' do
    VCR.use_cassette :daily do
      result = client.daily
      expect(result['quote']['text']).to include('It\'s so beautiful to see your hands in the air!')
    end
  end
end
