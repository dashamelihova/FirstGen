# Grup

This gem is used for getting metrics of your path to directory. The output of this code will be:
1) Amount of lines in file
2) Amount of files (and it's extensions such as .cpp, .txt, .rb and e.t.c.)
3) Amount of methods in file
4) Amount of files-images (.png, .jpg and e.t.c.)
5) The destination directory (if there're different folders in path)

## Installation

Install the gem and add to the application's Gemfile by executing:

    $ gem 'grup'
    $ bundle

If bundler is not being used to manage dependencies, install the gem by executing:

    $ gem install grup

## Usage

 нашем геме существует единственный класс, который содержить имя папки для которой мы будем считать метрику. И в классе есть один публичный метод который создает файл со всей посчитаной метрикой

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/grup. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/grup/blob/main/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Grup project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/grup/blob/main/CODE_OF_CONDUCT.md).
