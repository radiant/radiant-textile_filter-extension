require "RedCloth"

class TextileFilterExtension < Radiant::Extension
  version "1.0.0"
  description "Allows you to compose page parts or snippets using the Textile text filter."
  url "http://textism.com/tools/textile/"

  extension_config do |config|
    config.gem "RedCloth", :version => ">= 4.2.0"
  end

  def activate
    TextileFilter
    Page.send :include, TextileTags
  end
end
