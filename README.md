# PLEASE NOTE, THIS PROJECT IS NO LONGER BEING MAINTAINEDs
# Rails development must have gems

Meta gem for essential gem for use in development environment

<a href="https://evrone.com/?utm_source=github.com">
  <img src="https://evrone.com/logo/evrone-sponsored-logo.png"
       alt="Sponsored by Evrone" width="231">
</a>

## Getting Started
### Prerequisites

1. hirb - rails console models table output
2. powder - Makes Pow even easier
3. wirble - rails console colorizing, tab-completion, persistent history
4. dev_log_in - Type /dev/log_in/john in browser to log in as john (in env.development)
5. guard
6. guard-rspec

### Installation

Just add to group :development in Gemfile:

```ruby
group :development do
  gem 'dev_must_have' , github: 'evrone/dev_must_have'
end
```

##### hirb

Add to `~/.irbrc`:

```ruby
begin
  if defined?(Rails)
    Hirb.enable
  end
rescue LoadError => err
end
```

##### wirble

Add to `~/.irbrc`:

```ruby
begin
  require 'wirble'

  Wirble.init
  Wirble.colorize
rescue LoadError => err
end
```

guard
```
guard init rspec
```

### Usage

Execute in rails console:

```
irb(main):003:0> User.all
```

You already can execute a lot of commands:

```
powder link => Link the current dir to ~/.pow/<current_directory>
powder unlink => Unlink current_dir or the symlink defined in .powder
powder config => Get Pow's current configuration information
powder open => Opens the pow link in a browser
```

See a bit more on the [gem homepage](https://github.com/Rodreegez/powder)

##### dev_log_in

Go to http://myproject.local/dev/log_in/john to log in as john (if a user with email "john@*.*" exists in DB)

## Contributing

Please read [Code of Conduct](CODE-OF-CONDUCT.md) and [Contributing Guidelines](CONTRIBUTING.md) for submitting pull requests to us.

## Versioning

We use [SemVer](http://semver.org/) for versioning. For the versions available, 
see the [tags on this repository](https://github.com/evrone/dev_must_have/tags). 

## Authors

* [Alexander Balashov](https://github.com/divineforest) - *Initial work*

See also the list of [contributors](https://github.com/evrone/dev_must_have/contributors) who participated in this project.

## License

This project is licensed under the [MIT License](LICENSE).
