module HowMuchIsTheFish
  class Client
    include HTTParty
    base_uri 'howmuchisthe.fish/json'

    def perma(id)
      self.class.get("/perma/#{id}") do |response|
        JSON.parse(response)
      end
    end

    def daily
      self.class.get("/daily") do |response|
        JSON.parse(response)
      end
    end

    def random
      self.class.get("/random") do |response|
        JSON.parse(response)
      end
    end

    def generate
      self.class.get("/random/generate") do |response|
        JSON.parse(response)
      end
    end

  end
end
