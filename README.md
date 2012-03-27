# Rails development must have gems

Meta gem for essential gem for use in development environment

#Gem list

1. hirb - rails console models table output
1. powder - Makes Pow even easier
1. wirble - rails console colorizing, tab-completion, persistent history
1. capistrano_colors - capistrano output colorizing
1. dev_log_in - Type /dev/log_in/john in browser to log in as john (in env.development)
1. guard
1. guard-rspec

# Usage

Just add to group :development in Gemfile:

```ruby
group :development do
  gem 'dev_must_have' , :git => 'https://github.com/evrone/dev_must_have'
end
```

## hirb

Add to `~/.irbrc`:

```ruby
begin
  if defined?(Rails)
    Hirb.enable
  end
rescue LoadError => err
end
```

then rails console and:

```
irb(main):003:0> User.all
```

## wirble

Add to `~/.irbrc`:

```ruby
begin
  require 'wirble'

  Wirble.init
  Wirble.colorize
rescue LoadError => err
end
```

## powder

You already can execute a lot of commands:

```
powder link => Link the current dir to ~/.pow/<current_directory>
powder unlink => Unlink current_dir or the symlink defined in .powder
powder config => Get Pow's current configuration information
powder open => Opens the pow link in a browser
```

See a bit more on the [gem homepage](https://github.com/Rodreegez/powder)

## capistrano_colors

Add to `config/deploy.rb`:

```ruby
require 'capistrano_colors'
```

## dev_log_in

Go to http://myproject.local/dev/log_in/john to log in as john (if a user with email "john@*.*" exists in DB)

## guard
```
guard init rspec
```
