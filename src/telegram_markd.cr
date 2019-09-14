require "./telegram_markd/html_entities"
require "./telegram_markd/utils"
require "./telegram_markd/node"
require "./telegram_markd/rule"
require "./telegram_markd/options"
require "./telegram_markd/renderer"
require "./telegram_markd/parser"
require "./telegram_markd/version"

module TelegramMarkd
  def self.to_html(source : String)
    return "" if source.empty?

    options = TelegramMarkd::Options.new(safe: true)
    document = Parser.parse(source, options)
    renderer = HTMLRenderer.new(options)
    renderer.render(document)
  end
end
