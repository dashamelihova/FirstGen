require_relative "lib/grup/version"

Gem::Specification.new do |spec|
  spec.name = "grup"
  spec.version = Grup::VERSION
  spec.authors = ["Dasha Sudarkina", "Dmitry Zadorozhny", "Ruslan Tinchurin", "Dasha Melikhova"]
  spec.email = ["32194338-dashasud@users.noreply.replit.com"]

  spec.summary = "A code base gem that counts the basic metrics of the code"
  spec.description = "The input is the path to the folder with the code, and the output is a file containing the main metrics of the code: the number of files, the number of classes, the number of lines..."
  spec.homepage = "https://github.com/dashamelihova/FirstGen"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"
  spec.platform = Gem::Platform::RUBY

  spec.files = Dir['README.md', 'LICENSE', 'CHANGELOG.md',
                    'lib/**/*.rb','lib/**/*.rake',
                    'grup.gemspec', '.github/*.md',
                    'Gemfile', 'Rakefile']
  spec.extra_rdoc_files = ['README.md']

  # spec.add_dependency можно добавить библиотеки
  # spec.add_development_dependency
end