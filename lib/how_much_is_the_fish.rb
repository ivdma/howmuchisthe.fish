require 'httparty'

require 'how_much_is_the_fish/client'
require 'how_much_is_the_fish/version'

module HowMuchIsTheFish
  def self.client
    @client ||= HowMuchIsTheFish::Client.new
  end

  def self.random
    self.client.random
  end

  def self.perma(number)
    self.client.perma(number)
  end

  def self.daily
    self.client.daily
  end
end
