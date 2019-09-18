require "open-uri"
require "nokogiri"
require "pry"

#require "./lib/project_maverick/version"
require_relative "project_maverick/version"
require_relative "project_maverick/cli"
require_relative "project_maverick/Scraper"

module ProjectMaverick
  class Error < StandardError; end
  # Your code goes here...
end
