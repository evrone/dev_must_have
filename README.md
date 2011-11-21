# Rails development must have gems

Meta gem for essential gem for use in development environment

# Gems list

# hirb - rails console models table output

# Usage

Just add to Gemfile:

```
gem 'dev_must_have' , :git => "https://github.com/evrone/dev_must_have"
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
