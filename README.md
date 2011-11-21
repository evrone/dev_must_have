# Rails development must have gems

Meta gem for essential gem for use in development environment

#Gem list

1. hirb - rails console models table output
1. powder - Makes Pow even easier

# Usage

Just add to group :development in Gemfile:

```
group :development do
  gem 'dev_must_have' , :git => "https://github.com/evrone/dev_must_have"
end
```

## hirb

Add to ~/.irbrc:

```
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
