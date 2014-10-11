# howmuchisthe.fish ruby gem

A wrapper for an awesome Scooter quote API.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'how_much_is_the_fish'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install how_much_is_the_fish

## Usage

To get a random or daily quote

```ruby
HowMuchIsTheFish.random
HowMuchIsTheFish.daily
```

The hash would look like:

```ruby
{
  "id": 1,
  "permalink": "http://howmuchisthe.fish/json/perma/1",
  "quote": {
    "text": "I want you back for the rhythm attack. Coming down on the floor like a maniac. I want you back for the rhythm-attack. Get down in full effect!",
    "track": "How Much Is The Fish",
    "album": "No time to chill",
    "year": "1998",
    "album_cover": "http://s.pixogs.com/image/R-61786-1184615486.jpeg",
    "album_information": "http://www.discogs.com/Scooter-No-Time-To-Chill/master/3680"
  }
}
```

To get a quote by ID use

```ruby
HowMuchIsTheFish.perma(1) # Where 1 is ID of the quote.
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/how_much_is_the_fish/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
