$:.unshift(File.expand_path("../", __FILE__))
require "configset/version"
require "rainbow/ext/string"

require "configset/autoloader"
Configset::Autoloader.setup

module Configset
  class Error < StandardError; end
end
