require "./spec_helper"

RENDED_HTML =
  <<-HTML
  <strong>bold text</strong>
  <em>italic text</em>
  <a href="http://www.example.com/">inline URL</a>
  <a href="tg://user?id=123456789">inline mention of a user</a>
  <code>inline fixed-width code</code>
  <pre>pre-formatted fixed-width code block
  </pre>

  HTML

describe Markd do
  # TODO: Write tests

  it "works" do
    true.should eq(true)
  end

  it "to_html" do
    markdown =
      <<-MD
      **bold text**
      _italic text_
      [inline URL](http://www.example.com/)
      [inline mention of a user](tg://user?id=123456789)
      `inline fixed-width code`
      ```block_language
      pre-formatted fixed-width code block
      ```
      MD

    options = Markd::Options.new(safe: true)
    html = Markd.to_html markdown, options
    html.should eq(RENDED_HTML)
  end
end
