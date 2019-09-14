module Markd::Rule
  struct Heading
    include Rule

    ATX_HEADING_MARKER    = /^\#{1,6}(?:[ \t]+|$)/
    SETEXT_HEADING_MARKER = /^(?:=+|-+)[ \t]*$/

    def match(parser : Parser, container : Node) : MatchValue
      MatchValue::None
    end

    def token(parser : Parser, container : Node)
      # do nothing
    end

    def continue(parser : Parser, container : Node)
      # a heading can never container > 1 line, so fail to match
      ContinueStatus::Stop
    end

    def can_contain?(type)
      false
    end

    def accepts_lines?
      false
    end

    private def match?(parser : Parser, regex : Regex) : Regex::MatchData?
      match = parser.line[parser.next_nonspace..-1].match(regex)
      !parser.indented && match ? match : nil
    end
  end
end
