require 'rubygems'
require 'test/unit'
require 'vcr'

VCR.config do |c|
  c.cassette_library_dir = 'fixtures/vcr_cassettes'
  c.stub_with :fakeweb
end

class VCRTest < Test::Unit::TestCase
  def test_projecttracking_heroku_com
    VCR.use_cassette('synopsis', :record => :new_episodes) do
      Net::HTTP.get_response(URI.parse('http://projecttracking.heroku.com/priorities/'))
      Net::HTTP.get_response(URI.parse('http://projecttracking.heroku.com/workloads/'))
    end
  end
end