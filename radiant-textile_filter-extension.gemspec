# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "radiant-textile_filter-extension/version"

Gem::Specification.new do |s|
  s.name        = "radiant-textile_filter-extension"
  s.version     = RadiantTextileFilterExtension::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Radiant CMS Dev Team"]
  s.email       = ["radiant@radiantcms.org"]
  s.homepage    = "http://textism.com/tools/textile/"
  s.summary     = %q{Textile Filter for Radiant CMS}
  s.description = %q{Allows you to compose page parts or snippets using the Textile text filter.}

  ignores = if File.exist?(".gitignore")
    File.read(".gitignore").split("\n").inject([]) {|a,p| a + Dir[p] }
  else
    []
  end
  s.files         = Dir["**/*"] - ignores
  s.test_files    = Dir["test/**/*","spec/**/*","features/**/*"] - ignores
  s.require_paths = ["lib"]

  s.add_dependency "RedCloth", "~> 4.2.0"
end
