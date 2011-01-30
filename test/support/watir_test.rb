require 'rubygems'
require 'watir'
require 'test/unit'

class WatirTest < Test::Unit::TestCase
  # Replace this with your real tests.t
  def test_projecttracking_heroku_com
    browser = Watir::Browser.new
    browser.goto("http://projecttracking.heroku.com/priorities")
    assert_match /view conflicts/, browser.select_list(:name => "view_by").value
    browser.select_list(:name => "view_by").select "view progress"
    assert_match /view progress/, browser.select_list(:name => "view_by").value
    browser.close
  end
end






