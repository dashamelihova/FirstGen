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

In our GEM there exists the only class that will contain path to our directory in which code will count metrics. Also there're one public class that will create .txt file with all counted metrics
Available methods:
Use new to create a class object, specify the path to your codebase directory instead of 'new_dir':
    ```
    object = Grup::Calculator.new('new_dir')
    ```
Use the method calculate_metrics to calculate the metric, instead of "new2.txt" specify the desired name of the report file:
    ```
    object.calculate_metrics("new2.txt")
    ```
Use the method compare_reports to compare two reports. The differences of the reports will be displayed in the terminal:
    ```
    object.compare_reports("new.txt", "new2.txt")
    ```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/dashamelihova/FirstGen. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/dashamelihova/FirstGen/blob/main/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Grup project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/grup/blob/main/CODE_OF_CONDUCT.md).
