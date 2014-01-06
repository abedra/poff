# Poff (Plain Old Feature Flags

This gem is about as plain as they come. The point is to create a
static feature flag gem that doesn't require any bindings, adapters,
or database integration.

## Installation

Add this line to your application's Gemfile:

    gem 'poff'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install poff

Once the gem is installed, simply run the generator to create the initializer:

    $ rails generate poff:initializer

## Usage

When you want to create a feature, just add it to the `FeatureFlags`
hash in `config/initializers/poff.rb`:

```ruby
FeatureFlags = {
  my_feature: :on
  my_other_feature: :off
}
```

Just restart your app and the changes will be picked up. When you want
to check if a feature is enabled just call `Poff::Feature.enabled?`:

```ruby
if Poff::Feature.enabled?(:my_feature)
  do_something_here
end
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
