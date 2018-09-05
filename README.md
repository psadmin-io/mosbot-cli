# Mosbot::Cli

`mosbot` will generate a My Oracle Support URL based on a document ID, bug number, patch number or community idea. To use mosbot, enter the URL type and the number.

    $ mosbot doc 123456.1
    $ https://support.oracle.com/epmos/faces/DocumentDisplay?id=123456.1

    $ mosbot bug 1222341
    $ https://support.oracle.com/epmos/faces/BugMatrix?id=1222341

`mosbot` will default to documents. If you specify only a number `mosbot` will return a document URL. Supported types are:

* `doc`
* `bug`
* `patch`
* `idea`

You can also configure `mosbot` to copy the output URL or open a browser window with the URL. The environment variables `MOS_COPY_URL=true` and `MOS_OPEN_URL=true` control how `mosbot` handles the output.

## Installation

    $ gem install mosbot

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/mosbot-cli. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Mosbot::Cli project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/mosbot-cli/blob/master/CODE_OF_CONDUCT.md).
