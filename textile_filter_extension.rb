require "RedCloth"
require "radiant-textile_filter-extension/version"

class TextileFilterExtension < Radiant::Extension
  version RadiantTextileFilterExtension::VERSION
  description "Allows you to compose page parts or snippets using the Textile text filter."
  url "http://textism.com/tools/textile/"

  def activate
    TextileFilter
    Page.send :include, TextileTags
  end
end
