# telegram_markd

Markdown to HTML converter compatible with Telegram messages

## Installation

1. Add the dependency to your `shard.yml`:

   ```yaml
   dependencies:
     telegram_markd:
       github: Hentioe/telegram_markd
       branch: compatible/telegram
   ```

2. Run `shards install`

## Usage

````crystal
require "telegram_markdown"

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

TelegramMarkdown.to_html markdown
# => <strong>bold text</strong>
# => <em>italic text</em>
# => <a href="http://www.example.com/">inline URL</a>
# => <a href="tg://user?id=123456789">inline mention of a user</a>
# => <code>inline fixed-width code</code>
# => <pre>pre-formatted fixed-width code block</pre>
````

## Contributing

1. Fork it (<https://github.com/Hentioe/telegram_markdown.cr/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Contributors

- [Hentioe](https://github.com/Hentioe) - creator and maintainer

## License

[MIT License](https://github.com/icyleaf/markd/blob/master/LICENSE) © icyleaf
