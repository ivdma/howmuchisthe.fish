require 'vcr'

require File.expand_path('../../lib/how_much_is_the_fish.rb', __FILE__)

VCR.configure do |c|
  c.cassette_library_dir = 'spec/fixtures/vcr_cassettes'
  c.hook_into :webmock
end
