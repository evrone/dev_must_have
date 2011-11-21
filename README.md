# Rails development must have gems

Meta gem for essention gem for use in development environment

# Gems list

# hirb - rails console models table output

# Usage

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
irb(main):003:0> User.all
