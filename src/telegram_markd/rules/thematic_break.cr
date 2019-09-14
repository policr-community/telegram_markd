module TelegramMarkd::Rule
  struct ThematicBreak
    include Rule

    THEMATIC_BREAK = /^(?:(?:\*[ \t]*){3,}|(?:_[ \t]*){3,}|(?:-[ \t]*){3,})[ \t]*$/

    def match(parser : Parser, container : Node)
      MatchValue::None
    end

    def continue(parser : Parser, container : Node)
      # a thematic break can never container > 1 line, so fail to match:
      ContinueStatus::Stop
    end

    def token(parser : Parser, container : Node)
      # do nothing
    end

    def can_contain?(type)
      false
    end

    def accepts_lines?
      false
    end
  end
end
